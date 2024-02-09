-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Copyright (c) 25/03/2023 Jason Bou-Samra.
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, version 3.
--
-- This program is distributed in the hope that it will be useful, but
-- WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
-- General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.
-------------------------------------------------------------------------------

-- to build   : gprbuild -largs $(pkg-config sdl2 SDL2_image --libs)

with Ada.Text_IO;                       use Ada.Text_IO;
with Ada.Command_Line;                  use Ada.Command_Line;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

with SDL.Video.Windows.Makers;
with SDL.Video.Renderers.Makers;
with SDL.Video.Surfaces.Makers;
with SDL.Video.Textures.Makers;
with SDL.Video.Rectangles;

--with SDL.Video.Renderers;

with SDL.Images.IO;
with SDL.Events.Events;
with SDL.Error;
use SDL.C;
procedure threed is

-- hidden message

   S : String := "toto all the way";

-- temporary xyz sets

   xt, yt, zt : array (1 .. 8) of Float;
   xu, yu, zu : array (1 .. 8) of Float;

-- cube model

   x : array (1 .. 8) of Float :=
     (-80.0, 80.0, 80.0, -80.0, -80.0, 80.0, 80.0, -80.0);
   y : array (1 .. 8) of Float :=
     (80.0, 80.0, -80.0, -80.0, 80.0, 80.0, -80.0, -80.0);
   z : array (1 .. 8) of Float :=
     (80.0, 80.0, 80.0, 80.0, -80.0, -80.0, -80.0, -80.0);

   angle : Float := 0.0;
   scale : Float := 3.0;
   RAD   : Float := 3.14159 / 180.0;
   SPEED : Float := 2.0;

   Window_Title : constant String := "3DCube demo";
   quit         : Boolean         := False;

   use SDL.Video;
   use type Windows.Window_Flags;
   use type Renderers.Renderer_Flags;
   use type SDL.Events.Event_Types;

   Win : Windows.Window;
   Ren : Renderers.Renderer;
   Bmp : Surfaces.Surface;
   Tex : Textures.Texture;

   Event : SDL.Events.Events.Events;
   Dummy : Boolean;

---------------------------------
-- poll function
---------------------------------

   function Poll_Quit return Boolean is
      use type SDL.Events.Event_Types;
   begin
      while SDL.Events.Events.Poll (Event) loop
         if Event.Common.Event_Type = SDL.Events.Quit then
            return True;
         end if;
      end loop;
      return False;
   end Poll_Quit;

--------------------------------
-- initialise SDL
--------------------------------
   procedure initSDL is

   begin

      --  Initialise SDL
      if not SDL.Initialise or not SDL.Images.Initialise then
         Ada.Text_IO.Put_Line
           (Ada.Text_IO.Standard_Error,
            "SDL.Initialize error: " & SDL.Error.Get);
         Ada.Command_Line.Set_Exit_Status (Ada.Command_Line.Failure);
         return;
      end if;

--     Create window
      Windows.Makers.Create
        (Win,
         Title    => Window_Title,
         Position =>
           (Windows.Undefined_Window_Position,
            Windows.Undefined_Window_Position),
         Size  => (640, 512),
         Flags => Windows.Shown);

--     Create renderer
      Renderers.Makers.Create
        (Rend   => Ren,
         Window => Win,
         Flags  => (Renderers.Accelerated or Renderers.Present_V_Sync));

   end initSDL;

-------------------------------
-- shutdown routine
-------------------------------
   procedure shutdownSDL is

   begin
--  Not really needed since these will soon go out of scope
      Tex.Finalize; -- texture
      Ren.Finalize; -- renderer
      Win.Finalize; -- window
      SDL.Finalise; -- SDL
   end shutdownSDL;

--------------------------------
-- rotation & projection routine
--------------------------------
   procedure rotate is

   begin
      for I in 1 .. 8 loop
-- x angle (Roll)
         xt (I) := x (I);
         yt (I) := y (I) * Cos (RAD * angle) - z (I) * Sin (RAD * angle);
         zt (I) := y (I) * Sin (RAD * angle) + z (I) * Cos (RAD * angle);

-- y angle (Pitch)
         xu (I) := zt (I) * Sin (RAD * angle) + xt (I) * Cos (RAD * angle);
         yu (I) := yt (I);
         zu (I) := xt (I) * (-Sin (RAD * angle)) + zt (I) * Cos (RAD * angle);

-- z angle (Yaw)
         xt (I) := xu (I) * Cos (RAD * angle) - yu (I) * Sin (RAD * angle);
         yt (I) := xu (I) * Sin (RAD * angle) + yu (I) * Cos (RAD * angle);
         zt (I) := zu (I);

-- 2d perspective projection
         xt (I) := (xt (I) * 200.0) / (zt (I) + 800.0) * scale + 160.0;
         yt (I) := (yt (I) * 200.0) / (zt (I) + 800.0) * scale + 128.0;

      end loop;

      angle := angle + SPEED;

   end rotate;

-------------------------------
-- render cube
-------------------------------
   procedure Render is

   begin
      Renderers.Set_Draw_Colour (Ren, (0, 0, 40, 255));
      Renderers.Clear (Ren);    -- background

      Renderers.Set_Draw_Colour (Ren, (100, 100, 255, 255)); -- pen

-- draw cube front face
      Ren.Draw
      (Line => ((int (xt (1)), int (yt (1))), (int (xt (2)), int (yt (2)))));
      Ren.Draw
      (Line => ((int (xt (2)), int (yt (2))), (int (xt (3)), int (yt (3)))));
      Ren.Draw
      (Line => ((int (xt (3)), int (yt (3))), (int (xt (4)), int (yt (4)))));
      Ren.Draw
      (Line => ((int (xt (4)), int (yt (4))), (int (xt (1)), int (yt (1)))));

-- draw cube back face
      Ren.Draw
      (Line => ((int (xt (5)), int (yt (5))), (int (xt (6)), int (yt (6)))));
      Ren.Draw
      (Line => ((int (xt (6)), int (yt (6))), (int (xt (7)), int (yt (7)))));
      Ren.Draw
      (Line => ((int (xt (7)), int (yt (7))), (int (xt (8)), int (yt (8)))));
      Ren.Draw
      (Line => ((int (xt (8)), int (yt (8))), (int (xt (5)), int (yt (5)))));

-- draw cube sides
      Ren.Draw
      (Line => ((int (xt (1)), int (yt (1))), (int (xt (5)), int (yt (5)))));
      Ren.Draw
      (Line => ((int (xt (2)), int (yt (2))), (int (xt (6)), int (yt (6)))));
      Ren.Draw
      (Line => ((int (xt (3)), int (yt (3))), (int (xt (7)), int (yt (7)))));
      Ren.Draw
      (Line => ((int (xt (4)), int (yt (4))), (int (xt (8)), int (yt (8)))));

      Renderers.Present (Ren);
   end Render;

-------------------------------
-- main
-------------------------------

begin
   Put_Line ("3D cube rotating vector graphic demo");
   initSDL; -- call initialise SDL
   Renderers.Set_Scale (Ren, 2.0, 2.0);

   Main :
   loop
      rotate;  -- call rotate
      Render;    -- call draw
      quit := Poll_Quit;
      exit when quit;
      delay 0.020;
   end loop Main;

   shutdownSDL;
end threed;
