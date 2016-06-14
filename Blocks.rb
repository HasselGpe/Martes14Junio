# Bloques De Código(Blocks)

# En Ruby conocemos lo que es un objeto y un método. Sabemos que podemos pasar un objeto a un método 
# pero esta vez aprenderás que también puedes pasar bloques de código como argumento a un método. 
# Para correr un block dentro de un método se utiliza la keyword yield, y se puede llamar varias veces. 
# Otra cosa que vale mencionar es que un bloque tiene acceso a variables que están fuera de su definición.

# En otros lenguajes se les llama "closures" muchas de las veces veras estos blocks dentro de {} o de un do-end.

# Algunos ejemplos simples son:

# def do_this_block
#     block = yield
# end

# puts do_this_block { 1+1 }

# name = "Fernando"

# do_this_block do 
#     puts name * 2
# end
# Objetivos Académicos
# Comprender el concepto de un Block
# Escribir métodos que acepten un Block
# Actividades
# Otro ejemplo muy simple para lo que sirven los bloques es para medir el tiempo que tarda en ejecutarse 
# un método. Se te ocurre como hacer esto? Te servirá utilizar Time.now y para alentar un proceso sleep().

# Ahora regresa a alguno de los ejercicios que has completado y analiza su efectividad.

##################################################################################################################################
def time_sleep
  puts "Primer yield"
  yield
    def print_odd_indexed_integers(array)
      odd = []
      array.each_with_index do |number, index|
        if index % 2 == 1
          odd << number
        end
      end
    odd
  end
  puts "2 yield"

  yield
end

time_sleep do
  p Time.now
  sleep 5
end

p print_odd_indexed_integers([2, 4, 6, 8, 10, 12]) == [4,8,12]

