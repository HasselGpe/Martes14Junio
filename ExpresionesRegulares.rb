# Expresiones Regulares

# Cuando se trata de trabajar, procesar y manipular un 'string' las expresiones regulares son una herramienta 
# muy poderosa. Aunque puede parecer complicado entender como usarlas una vez que las empiezas a usar 
# comprenderás su poder y la elegancia con la que manipulan 'strings'. Muchos de los métodos nativos de Ruby para
#  'strings' utilizan estas expresiones.

# Las Expresiones regulares se utilizan mucho en las barras de búsqueda o buscadores para poder ir 
# encontrando patrones en textos.

# Enlaces Externos
# Te recomendamos mucho leer estos enlaces te serán de mucha ayuda.

# Ruby for Newbies
# rubular.com
# Pickaxe Guide
# Regex Overview
# Objetivos Académicos
# Comprender la sintaxis de las expresiones regulares
# Aprender a usar expresiones regulares junto con métodos de Ruby
# Actividades
# Deberás completar los siguientes métodos para que realicen lo que se indica en el comentario.

# Un banco utiliza el siguiente formato en sus números de cuenta: "1234-123-123"

# Crea los siguientes métodos que reciban un string y piensa bien como nombrar a cada uno. adicional 
# Deberás crear cuatro pruebas en el Driver Code para cada método.

# Métodos:

# Regresa true si encuentra un numero de cuenta.
# Regresa un numero de cuenta si existe dentro del string y nil en el caso contrario.
# Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
# Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros siete numeros. 
# ej. "XXXX-XXX-234"
# Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones
#  lo regresa a su formato original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de 
#  menos dígitos no debería remplazarlo.

##################################################################################################################################
#  Regresa true si encuentra un numero de cuenta y numero no valido si no lo hace
 def encontrar_number(string)
    if string.match(/(\d{4})-(\d{3})-(\d{3})$/)  
     true
   else
     "Numero no valido"
   end
 end


# #Regresa un numero de cuenta si exite dentro del string y nil en el caso contrario.
def existencia_number(string)
   if /(\d{4})-(\d{3})-(\d{3})$/ =~ string 
     p string 
   else
     nil
   end
 end

#Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.

def numeros_cuenta(string)
  array = []
  if string.include?(string)
    array << /\d{4}\-\d{3}-\d{3}/.match(string).to_s
  else
    array
  end
end

#Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" 
#los primeros siete numeros. ej. "XXXX-XXX-234"
def remplazo(string)
      if string.include?(string)
           string.gsub(/\d{4}\-\d{3}/, "XXXX-XXX")
      else
        puts "numero no encontrado"
  end
end

#Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez 
#de guiones lo regresa a su formato original donde usa guiones para dividir los diez dígitos. 
#Si encuentra un numero de menos dígitos no debería remplazarlo.
def simbolos_cambiados(string)
  if string.length == 10 
    string.gsub(/(\d{4})(\d{3})(\d{3})$/, '\1-\2-\3')
  elsif string.length == 12
    string.gsub(/(\d{4}).(\d{3}).(\d{3})$/, '\1-\2-\3')
  else
    " no valido"
  end  
end
# Drive code encontrar_number
p encontrar_number ("1234-123-123") 
p encontrar_number ("1214-823-1a5") 
p encontrar_number ("9898-aaa-eee")
p encontrar_number ("lle4-777-ewe")

# #Drive code de existencia_number
p existencia_number ("1234-123-123")
p existencia_number ("12a4-823-1a5") 
p existencia_number ("9898-aaa-eee")
p existencia_number ("lle4-777-ewe")

# Drive code de numeros_cuenta
p numeros_cuenta ("1234-123-123")
p numeros_cuenta ("lle4-777-ewa")
p numeros_cuenta ("lla4-7w7-rae")
p numeros_cuenta ("qwew-799-qwe")

#Drive code de remplazo
p remplazo ("1234-123-123")
p remplazo ("1234-777-aqe")
p remplazo ("1234-727-twe")
p remplazo ("1234-799-par")

#Drive code de simbolos_cambiados
p simbolos_cambiados ("1234-123-123")
p simbolos_cambiados ("1234777aqe")
p simbolos_cambiados ("1234.727.twe")
p simbolos_cambiados ("1234-799-par")






































