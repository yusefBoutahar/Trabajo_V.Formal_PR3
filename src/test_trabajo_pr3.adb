with Ada.Text_IO;      use Ada.Text_IO;
with Trabajo_Pr3;      use Trabajo_Pr3;
with Test_Assertions;  use Test_Assertions;
with SYSTEM.ASSERTIONS;

procedure Test_Trabajo_Pr3 is


   -- **************************************
   -- Pruebas a la funcion Space_Counter
   -- **************************************
   -- __________________________________________________________
   procedure Test_Space_Counter_1 is
      Msg : constant String := "Test (v1): La ristra tiene 1 espacio";
      X   : constant String := "Hola Mundo";
      resultado : Integer;
   begin
      resultado := Space_Counter(X);
      Assert_True (resultado = 1, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Space_Counter_1;
   -- __________________________________________________________

   -- __________________________________________________________
   procedure Test_Space_Counter_2 is
      Msg : constant String := "Test (v2): La ristra esta vacia";
      X   : constant String := "";
      resultado : Integer;
   begin
      resultado := Space_Counter(X);
      Assert_True (resultado = 0, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Space_Counter_2;
   -- __________________________________________________________

   -- __________________________________________________________
   procedure Test_Space_Counter_3 is
      Msg : constant String := "Test (v3): La ristra tiene 4 espacios, todos desordenados";
      X   : constant String := " n1/ .. \0 ";
      resultado : Integer;
   begin
      resultado := Space_Counter(X);
      Assert_True (resultado = 4, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Space_Counter_3;
   -- __________________________________________________________

   -- __________________________________________________________
   procedure Test_Space_Counter_4 is
      Msg : constant String := "Test (v4): La ristra tiene 3 espacios, uno de ellos contiguo";
      X   : constant String := "Hola Mundo  ";
      resultado : Integer;
   begin
      resultado := Space_Counter(X);
      Assert_True (resultado = 3, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Space_Counter_4;
   -- __________________________________________________________

   -- __________________________________________________________
   procedure Test_Space_Counter_5 is
      Msg : constant String := "Test (v5): La ristra tiene 10 espacios";
      X   : constant String := "          ";
      resultado : Integer;
   begin
      resultado := Space_Counter(X);
      Assert_True (resultado = 10, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Space_Counter_5;
   -- __________________________________________________________

   -- __________________________________________________________
   procedure Test_Space_Counter_6 is
      Msg : constant String := "Test (v6): La ristra no tiene espacios";
      X   : constant String := "PROGRAMAcioNtreh";
      resultado : Integer;
   begin
      resultado := Space_Counter(X);
      Assert_True (resultado = 0, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Space_Counter_6;
   -- __________________________________________________________



   -- ****************************************
   -- Pruebas a la funcion Lower_Case_Counter
   -- ****************************************
   -- __________________________________________________________
   procedure Test_Lower_Case_Counter_1 is
      Msg : constant String := "Test (v1): La ristra no tiene minusculas";
      X   : constant String := "EL MEJOR GRUPO DE PR3";
      resultado : Integer;
   begin
      resultado := Lower_Case_Counter(X);
      Assert_True (resultado = 0, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Lower_Case_Counter_1;
   -- __________________________________________________________

   -- __________________________________________________________
   procedure Test_Lower_Case_Counter_2 is
      Msg : constant String := "Test (v2): La ristra tiene 1 minuscula";
      X   : constant String := "EL MEJOR GrUPO DE PR3";
      resultado : Integer;
   begin
      resultado := Lower_Case_Counter(X);
      Assert_True (resultado = 1, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Lower_Case_Counter_2;
   -- __________________________________________________________

   -- __________________________________________________________
   procedure Test_Lower_Case_Counter_3 is
      Msg : constant String := "Test (v3): La ristra entera son minusculas";
      X   : constant String := "los mejores";
      resultado : Integer;
   begin
      resultado := Lower_Case_Counter(X);
      Assert_True (resultado = 10, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Lower_Case_Counter_3;
   -- __________________________________________________________

   -- __________________________________________________________
   procedure Test_Lower_Case_Counter_4 is
      Msg : constant String := "Test (v4): La ristra tiene una miscula al final y al principio";
      X   : constant String := "Los mejoreS";
      resultado : Integer;
   begin
      resultado := Lower_Case_Counter(X);
      Assert_True (resultado = 8, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Lower_Case_Counter_4;
   -- __________________________________________________________

   -- __________________________________________________________
   procedure Test_Lower_Case_Counter_5 is
      Msg : constant String := "Test (v5): La ristra tiene minisculas intercaladas";
      X   : constant String := "PrOgRaMaCiOnT ReS";
      resultado : Integer;
   begin
      resultado :=Lower_Case_Counter(X);
      Assert_True (resultado = 7, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Lower_Case_Counter_5;
   -- __________________________________________________________

   -- __________________________________________________________
   procedure Test_Lower_Case_Counter_6 is
      Msg : constant String := "Test (v6): La ristra tiene minisculas con tildes y dieresis";
      X   : constant String := "PrOgRaM�Ci�nT ReS";
      resultado : Integer;
   begin
      resultado := Lower_Case_Counter(X);
      Assert_True (resultado = 6, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Lower_Case_Counter_6;
   -- __________________________________________________________



   -- ****************************************
   -- Pruebas a la funcion Upper_Case_Counter
   -- ****************************************
   -- __________________________________________________________
   procedure Test_Upper_Case_Counter_1 is
      Msg : constant String := "Test (v1): La ristra no tiene espacios";
      X   : constant String := "PROGRAMAcioNtreh";
      resultado : Integer;
   begin
      resultado := Upper_Case_Counter(X);
      Assert_True (resultado = 9, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Upper_Case_Counter_1;
   -- __________________________________________________________

   -- __________________________________________________________

   procedure Test_Upper_Case_Counter_2 is
      Msg : constant String := "Test (v2): La ristra no tiene mayusculas";
      X   : constant String := "esta estring no tiene mayusculas";
      resultado : Integer;
   begin
      resultado := Upper_Case_Counter(X);
      Assert_True (resultado = 0, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Upper_Case_Counter_2;
   -- __________________________________________________________

   -- __________________________________________________________

   procedure Test_Upper_Case_Counter_3 is
      Msg : constant String := "Test (v3): La ristra tiene mayusculas";
      X   : constant String := "esTa eStRin1g nO tiEne mayUscuLas";
      resultado : Integer;
   begin
      resultado := Upper_Case_Counter(X);
      Assert_True (resultado = 7, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Upper_Case_Counter_3;
   -- __________________________________________________________

   -- __________________________________________________________

   procedure Test_Upper_Case_Counter_4 is
      Msg : constant String := "Test (v4): La ristra esta vacia";
      X   : constant String := "";
      resultado : Integer;
   begin
      resultado := Upper_Case_Counter(X);
      Assert_True (resultado = 0, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Upper_Case_Counter_4;
   -- __________________________________________________________

   -- __________________________________________________________

   procedure Test_Upper_Case_Counter_5 is
      Msg : constant String := "Test (v5): La ristra solo tiene mayusculas";
      X   : constant String := "ESTAESTRINGSOLOTIENEMAYUSCULAS";
      resultado : Integer;
   begin
      resultado := Upper_Case_Counter(X);
      Assert_True (resultado = x'Length, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Upper_Case_Counter_5;
   -- __________________________________________________________

    -- __________________________________________________________

   procedure Test_Upper_Case_Counter_6 is
      Msg : constant String := "Test (v6): La ristra tiene mayusculas y no cuenta aquellas con tilde";
      X   : constant String := "esT� eStR�n1g n� ti�ne mayUscuLas";
      resultado : Integer;
   begin
      resultado := Upper_Case_Counter(X);
      Assert_True (resultado = 5, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_Upper_Case_Counter_6;
   -- __________________________________________________________



   -- *************************************
   -- Pruebas a la funcion String_C_Counter
   -- *************************************
   -- __________________________________________________________
   procedure Test_String_C_Counter_1 is
      Msg : constant String := "Test (v1): La ristra NO tiene 0";
      X   : constant String := "abcdefghi";
      resultado : Integer;
      pragma Unreferenced (resultado);
   begin
      resultado := Trabajo_Pr3.String_C_Counter(X);
      raise Program_Error;
   exception
      when SYSTEM.ASSERTIONS.ASSERT_FAILURE =>
         Put_Line (Msg & " (exception) ........................................................ OK");
     when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
     when others =>
         Put_Line (Msg & " Failed (exception)");
         raise;
   end Test_String_C_Counter_1;
   -- __________________________________________________________

   -- __________________________________________________________

   procedure Test_String_C_Counter_2 is
      Msg : constant String := "Test (v2): La ristra tiene un 0 en medio";
      X   : constant String := "abcd0efghi";
      resultado : Integer;
   begin
      resultado := String_C_Counter(X);
      Assert_True (resultado = 4, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_String_C_Counter_2;
   -- __________________________________________________________

   -- __________________________________________________________

   procedure Test_String_C_Counter_3 is
      Msg : constant String := "Test (v3): La ristra tiene un 0 al comienzo";
      X   : constant String := "0abcdefghi";
      resultado : Integer;
   begin
      resultado := String_C_Counter(X);
      Assert_True (resultado = 0, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_String_C_Counter_3;
   -- __________________________________________________________

   -- __________________________________________________________

   procedure Test_String_C_Counter_4 is
      Msg : constant String := "Test (v4): La ristra tiene un 0 al final";
      X   : constant String := "abchi0";
      resultado : Integer;
   begin
      resultado := String_C_Counter(X);
      Assert_True (resultado = 5, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_String_C_Counter_4;
   -- __________________________________________________________

   -- __________________________________________________________

   procedure Test_String_C_Counter_5 is
      Msg : constant String := "Test (v5): La ristra tiene SOLO un 0";
      X   : constant String := "0";
      resultado : Integer;
   begin
      resultado := String_C_Counter(X);
      Assert_True (resultado = 0, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_String_C_Counter_5;
   -- __________________________________________________________

   -- __________________________________________________________

   procedure Test_String_C_Counter_6 is
      Msg : constant String := "Test (v6): La ristra Vacia";
      X   : constant String := "";
      resultado : Integer;
      pragma Unreferenced (resultado);
   begin
      resultado := Trabajo_Pr3.String_C_Counter(X);
      raise Program_Error;
   exception
      when SYSTEM.ASSERTIONS.ASSERT_FAILURE =>
         Put_Line (Msg & " (exception) ............................................................. OK");
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
         raise;
   end Test_String_C_Counter_6;
   -- __________________________________________________________


begin

   Put_Line("");
   Put_Line("");
   Put_Line ("********************* Test_Space_Counter");
   Test_Space_Counter_1;
   Test_Space_Counter_2;
   Test_Space_Counter_3;
   Test_Space_Counter_4;
   Test_Space_Counter_5;
   Test_Space_Counter_6;



   Put_Line("");
   Put_Line ("********************* Test_Lower_Case_Counter");
   Test_Lower_Case_Counter_1;
   Test_Lower_Case_Counter_2;
   Test_Lower_Case_Counter_3;
   Test_Lower_Case_Counter_4;
   Test_Lower_Case_Counter_5;
   Test_Lower_Case_Counter_6;



   Put_Line("");
   Put_Line ("********************* Test_Upper_Case_Counter");
   Test_Upper_Case_Counter_1;
   Test_Upper_Case_Counter_2;
   Test_Upper_Case_Counter_3;
   Test_Upper_Case_Counter_4;
   Test_Upper_Case_Counter_5;
   Test_Upper_Case_Counter_6;



   Put_Line("");
   Put_Line ("********************* Test_String_C_Counter");
   Test_String_C_Counter_1;
   Test_String_C_Counter_2;
   Test_String_C_Counter_3;
   Test_String_C_Counter_4;
   Test_String_C_Counter_5;
   Test_String_C_Counter_6;

end Test_Trabajo_Pr3;
