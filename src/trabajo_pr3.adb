package body Trabajo_Pr3
   with SPARK_Mode => On
is
   
   function Space_Counter (Str : String) return Integer is
   result : Integer := 0;   
   begin
   -- Funcion que devuelve el numero de espacios que hay
   -- en la ristra pasada por parametros.
       
      for i in Str'Range loop
         if str(i) = ' ' then
            result := result + 1;
         end if;
         pragma Loop_Invariant(result <= i);
      end loop;
      return result;
   end Space_Counter;



   function Upper_Case_Counter (Str : String) return Integer is
   -- Funcion que devuelve el numero de letras mayusculas
   -- de la ristra pasada por parametros
   result : Integer := 0;
   begin
      if Str'Length < 1 then
         return result;
      end if;
      for i in Str'Range loop
         if (Str(i) >= 'A') and (Str(i) <= 'Z')  then
            result := result + 1;
         end if;
         pragma Loop_Invariant(result <= i-Str'First+1);
      end loop;
      return result;
   end Upper_Case_Counter;



   function Lower_Case_Counter (Str : String) return Integer is
   -- Funcion que devuelve el numero de letras minusculas
   -- de la ristra pasada por parametros
      result : Integer := 0;
      i : Integer;
   begin
      if (Str'Length < 1) or (Str'First >= Str'Last) then
         return result;
      end if;
      i:=Str'First;
      while i <= Str'Last loop
         if (Str(i) >= 'a') and (Str(i) <= 'z') then
            result := result + 1;
         end if;
         i :=i+1;
         pragma Loop_Variant(Increases => i);
         pragma Loop_Invariant(i>=Str'First);
         pragma Loop_Invariant(i<=Str'Last+1);
         pragma Loop_Invariant(result <= (i-Str'First)+1);
         
      end loop;
      return result;
   end Lower_Case_Counter;



   function String_C_Counter (Str : String) return Integer is
   -- Funcion que devuelve el numero de caracteres que hay
   -- previos al 0

   result : Integer := 0;
   begin
      for i in Str'Range loop
         if str(i) = '0' then
            return result;
         end if;
         result:=result+1;
         pragma Loop_Invariant(result <= i);
         pragma Loop_Invariant(for all k in Str'First..I =>
                                 Str(k) /='0');
      end loop;
      return result;
   end String_C_Counter;
      

end Trabajo_Pr3;
