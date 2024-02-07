pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__threed.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__threed.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E083 : Short_Integer; pragma Import (Ada, E083, "system__os_lib_E");
   E010 : Short_Integer; pragma Import (Ada, E010, "ada__exceptions_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exception_table_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "ada__containers_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "ada__io_exceptions_E");
   E034 : Short_Integer; pragma Import (Ada, E034, "ada__numerics_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "ada__strings_E");
   E067 : Short_Integer; pragma Import (Ada, E067, "ada__strings__maps_E");
   E070 : Short_Integer; pragma Import (Ada, E070, "ada__strings__maps__constants_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "interfaces__c_E");
   E028 : Short_Integer; pragma Import (Ada, E028, "system__exceptions_E");
   E092 : Short_Integer; pragma Import (Ada, E092, "system__object_reader_E");
   E060 : Short_Integer; pragma Import (Ada, E060, "system__dwarf_lines_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__soft_links__initialize_E");
   E049 : Short_Integer; pragma Import (Ada, E049, "system__traceback__symbolic_E");
   E033 : Short_Integer; pragma Import (Ada, E033, "system__img_int_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "system__img_uns_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "ada__assertions_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "ada__strings__utf_encoding_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "ada__tags_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "ada__strings__text_buffers_E");
   E155 : Short_Integer; pragma Import (Ada, E155, "interfaces__c__strings_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "ada__streams_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "system__file_control_block_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "system__finalization_root_E");
   E146 : Short_Integer; pragma Import (Ada, E146, "ada__finalization_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "system__file_io_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "system__storage_pools_E");
   E174 : Short_Integer; pragma Import (Ada, E174, "system__finalization_masters_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "system__storage_pools__subpools_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__calendar_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__calendar__delays_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "ada__text_io_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "system__pool_global_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "sdl__rwops_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "sdl__video_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "sdl__video__palettes_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "sdl__video__pixel_formats_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "sdl__video__pixels_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "sdl__video__rectangles_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "sdl__video__surfaces_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "sdl__video__textures_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "sdl__video__windows_E");
   E158 : Short_Integer; pragma Import (Ada, E158, "sdl__events__events_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "sdl__video__renderers_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "sdl__images_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "sdl__images__io_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E213 := E213 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "sdl__video__renderers__finalize_spec");
      begin
         F1;
      end;
      E168 := E168 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "sdl__video__windows__finalize_spec");
      begin
         F2;
      end;
      E215 := E215 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "sdl__video__textures__finalize_spec");
      begin
         F3;
      end;
      E195 := E195 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "sdl__video__surfaces__finalize_spec");
      begin
         F4;
      end;
      declare
         procedure F5;
         pragma Import (Ada, F5, "sdl__video__palettes__finalize_body");
      begin
         E187 := E187 - 1;
         F5;
      end;
      declare
         procedure F6;
         pragma Import (Ada, F6, "sdl__video__palettes__finalize_spec");
      begin
         F6;
      end;
      E189 := E189 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__pool_global__finalize_spec");
      begin
         F7;
      end;
      E135 := E135 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "ada__text_io__finalize_spec");
      begin
         F8;
      end;
      E178 := E178 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__storage_pools__subpools__finalize_spec");
      begin
         F9;
      end;
      E174 := E174 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "system__finalization_masters__finalize_spec");
      begin
         F10;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "system__file_io__finalize_body");
      begin
         E145 := E145 - 1;
         F11;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;
   pragma Favor_Top_Level (No_Param_Proc);

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E027 := E027 + 1;
      Ada.Containers'Elab_Spec;
      E050 := E050 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E078 := E078 + 1;
      Ada.Numerics'Elab_Spec;
      E034 := E034 + 1;
      Ada.Strings'Elab_Spec;
      E065 := E065 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E067 := E067 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E070 := E070 + 1;
      Interfaces.C'Elab_Spec;
      E055 := E055 + 1;
      System.Exceptions'Elab_Spec;
      E028 := E028 + 1;
      System.Object_Reader'Elab_Spec;
      E092 := E092 + 1;
      System.Dwarf_Lines'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E083 := E083 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E023 := E023 + 1;
      E015 := E015 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E049 := E049 + 1;
      System.Img_Int'Elab_Spec;
      E033 := E033 + 1;
      E010 := E010 + 1;
      System.Img_Uns'Elab_Spec;
      E073 := E073 + 1;
      E060 := E060 + 1;
      Ada.Assertions'Elab_Spec;
      E172 := E172 + 1;
      Ada.Strings.Utf_Encoding'Elab_Spec;
      E121 := E121 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E129 := E129 + 1;
      Ada.Strings.Text_Buffers'Elab_Spec;
      E119 := E119 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E155 := E155 + 1;
      Ada.Streams'Elab_Spec;
      E137 := E137 + 1;
      System.File_Control_Block'Elab_Spec;
      E149 := E149 + 1;
      System.Finalization_Root'Elab_Spec;
      E148 := E148 + 1;
      Ada.Finalization'Elab_Spec;
      E146 := E146 + 1;
      System.File_Io'Elab_Body;
      E145 := E145 + 1;
      System.Storage_Pools'Elab_Spec;
      E176 := E176 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E174 := E174 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E178 := E178 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E008 := E008 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E006 := E006 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E135 := E135 + 1;
      System.Pool_Global'Elab_Spec;
      E189 := E189 + 1;
      SDL.RWOPS'ELAB_SPEC;
      E211 := E211 + 1;
      SDL.VIDEO'ELAB_SPEC;
      E166 := E166 + 1;
      SDL.VIDEO.PALETTES'ELAB_SPEC;
      SDL.VIDEO.PALETTES'ELAB_BODY;
      E187 := E187 + 1;
      SDL.VIDEO.PIXEL_FORMATS'ELAB_SPEC;
      E185 := E185 + 1;
      SDL.VIDEO.PIXELS'ELAB_SPEC;
      E216 := E216 + 1;
      SDL.VIDEO.RECTANGLES'ELAB_SPEC;
      E193 := E193 + 1;
      SDL.VIDEO.SURFACES'ELAB_SPEC;
      E195 := E195 + 1;
      SDL.VIDEO.TEXTURES'ELAB_SPEC;
      E215 := E215 + 1;
      SDL.VIDEO.WINDOWS'ELAB_SPEC;
      E168 := E168 + 1;
      SDL.EVENTS.EVENTS'ELAB_SPEC;
      E158 := E158 + 1;
      SDL.VIDEO.RENDERERS'ELAB_SPEC;
      E213 := E213 + 1;
      SDL.IMAGES'ELAB_SPEC;
      E207 := E207 + 1;
      E209 := E209 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_threed");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/jason/Projects/Ada/3dc/threed.o
   --   -L/home/jason/Projects/Ada/3dc/
   --   -L/home/jason/Projects/Ada/3dc/
   --   -L/home/jason/opt/sdlada/lib/sdlada.release/
   --   -L/usr/lib/gcc/x86_64-redhat-linux/13/adalib/
   --   -static
   --   -lgnat
   --   -lm
   --   -ldl
--  END Object file/option list   

end ada_main;
