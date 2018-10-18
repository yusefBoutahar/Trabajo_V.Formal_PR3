package Trabajo_Pr3
   with SPARK_Mode => On
is

   function Space_Counter (Str : String) return Integer
   -- Funcion que devuelve el numero de espacios que hay
   -- en la ristra pasada por parametros.

     with
       Pre => True,
       Post =>(if Str'Length = 0 then Space_Counter'Result = 0) or
                (if Space_Counter'Result = 0 then
                  (for all i in Str'Range =>
                     Str (i) /= ' ')
                else(
                   for some i in Str'Range =>
                        Str (i) = ' '));


   function Upper_Case_Counter (Str : String) return Integer
   -- Funcion que devuelve el numero de letras mayusculas
   -- de la ristra pasada por parametros

     with
       Pre => True,
       Post => (if Str'Length = 0 then Upper_Case_Counter'Result = 0) or
             (if Upper_Case_Counter'Result = 0 then
                (for all i in Str'Range =>
                     (Str(i) < 'A') or (Str(i) > 'Z'))
             else
                (for some i in Str'Range =>
                   (Str(i) >= 'A') and (Str(i) <= 'Z')));



   function Lower_Case_Counter (Str : String) return Integer
   -- Funcion que devuelve el numero de letras minusculas
   -- de la ristra pasada por parametros

   with
       Pre => (Str'Length > 0) and
         (Str'Length < Integer'Last) and
         (Str'Last < Integer'Last-1),

       Post => (if Str'Length = 0 then Lower_Case_Counter'Result = 0) or
             (if Lower_Case_Counter'Result = 0 then
                (for all i in Str'Range =>
                     (Str(i) < 'a') or (Str(i) > 'z'))
             else
                (for some i in Str'Range =>
                   (Str(i) >= 'a') and (Str(i) <= 'z')));



   function String_C_Counter (Str : String) return Integer
   -- Funcion que devuelve el numero de caracteres que hay
   -- previos al 0

     with
       Pre => (for some J in Str'Range =>
                 Str(J) = '0'),

       Post =>  (if Str'Length = 0 then String_C_Counter'Result = 0)
               or (if String_C_Counter'Result = 0 then
                     (for all i in Str'Range =>
                          Str (i) /= '0')
                   else
                     (for some i in Str'Range =>
                          Str (i) = '0'));

end Trabajo_Pr3;
