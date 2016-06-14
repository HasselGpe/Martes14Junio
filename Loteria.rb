
# Regresar a Challenges

# Lotería

# ¿Sabes cómo funciona la lotería?

# La lotería básicamente funciona al revolver una serie de números y escoger aleatoriamente 
# algunos de ellos los cuales serán los ganadores. Lo que hace interesante este juego es el 
#  los números dando azar al juego.

# En este ejercicio tendrás que crear un método que revuelva una serie de datos. La clase Array 
# de Ruby cuenta con un método llamado shuffle el cual desgraciadamente no puedes usar, tampoco 
# puedes utilizar Array#sort. Tendrás que crear el algoritmo tu mismo utilizando loops.

# Para más información sobre Algoritmos Aleatorios revisa el Knuth Shuffle Method

# Objetivos Académicos
# Iterar a través de colecciones de datos (Enumerables)
# Utilizar métodos aleatorios como sample y rand
# Actividades
# Escribe un método llamado shuffle el cual tome como argumento un Array y regrese un Array con 
# los mismos números pero aleatoriamente ordenados. Cada resultado debe de tener la misma probabilidad
#  de suceder, esto es lo que lo hace realmente aleatorio, ya que nunca puedes predecir en que orden
#   caerán los números.

# def shuffle(array)
#   # escribe el algoritmo que revuelva un array
# end


# # Driver code:
# array = (1..15).to_a

# # Esto no deberá arrojar una excepción
# 10.times do |variable|
#     raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
# end
# p true
##################################################################################################################################
def shuffle(array)
  # escribe el algoritmo que revuelva un array
  numbers = [] #Array vacio para ir metiendo los numeros aleatoriamente 
  #Se hace la declaraciòn de while que correra hasta que la longitud del array "number" se igual  a la longitud del array que nos da el usurio 
      while numbers.length <= array.length
      #Escogera un elemento al azar de el array cada vez que entre 
          item = [array[rand(array.length)]]
          #Metera este numero al array numbers
          numbers << item 
      end
      numbers #Regresa el array lleno con los numeros aleatorios
end
# Driver code:
array = (1..15).to_a

# Esto no deberá arrojar una excepción
10.times do |variable|
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end
p true