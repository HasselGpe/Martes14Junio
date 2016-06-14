# Utilizar Pseudocódigo

# En la vida existen muchos lenguajes pero al final siempre acabamos hablando una mezcla de
# varios de ellos por facilidad o practicidad.

# Todos los lenguajes son una especie de código, te recomiendo leer este libro donde aprenderás 
# la importancia del código y además como funciona una computadora o como es que llegamos a crearlas.

# Code: The Hidden Language of Computer Hardware and Software
# Como ejemplo, es muy común que los programadores mexicanos hablen en Spanglish o pocho, ya que muchos 
# términos de la tecnología se escuchan mejor en ingles. O simplemente inventan nuevas palabras 
# como vamos a codear.

# En este momento estas aprendiendo el lenguaje de las computadoras; aunque en tu vida cotidiana 
# hablas tu propio lenguaje y con el, te comunicas con las demás personas.Tu no piensas en código,
#  o cuando lo lees no lo lees literalmente. Si no que en realidad usas un lenguaje intermedio entre 
#  español y código. Este lenguaje intermedio se le llama pseudocódigo.

# Como programador es muy importante poder comunicar a otros la funcionalidad de tu programa o 
# su estructura misma. Además entre mejor te comunicas en pseudocódigo, mejor conocerás como 
# realmente piensan las computadoras. Lo primero que hace un buen programador es imaginarse como resolver 
# un problema, luego lo escribe en pseudocódigo y en base a ese pseudocódigo escribe el código de su programa.

# Objetivos Académicos
# Aprender a escribir Pseudocódigo
# Aprender a leer código e interpretarlo
# Actividades
# Para escribir pseudocódigo tienes que simplemente ser práctico. Cuando te conviene hablar en 
# ingles y cuando en código.

# Deberás traducir el siguiente código a pseudocódigo utiliza los siguientes enlaces para
# mejorar tus resultados.

# External Resources
# Psuedocode by Naomi Nishimura from Cornell
# Pseudocode Standard from CalPoly
# Primero preguntate que hace el programa. Lee cuidadosamente cada linea y despues escribe el pseudocódigo.

# students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
#  [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
#  [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
#  [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

# def best_students(students)
#   best_students = []
#   x, y        = 0, 0

#    while y < students.length
#     current_student  = students[y][x]

#     if current_student[1] == 10
#       best_students.push(current_student[0])
#     end

#     if x == (students[y].length - 1)
#       x = 0
#       y += 1
#     else
#       x += 1
#     end
#   end
#   best_students
# end 

# p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]
##################################################################################################################################
students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

def best_students(students)
  best_students = []
  x, y        = 0, 0

   while y < students.length
    current_student  = students[y][x]

    if current_student[1] == 10
      best_students.push(current_student[0])
    end

    if x == (students[y].length - 1)
      x = 0
      y += 1
    else
      x += 1
    end
  end
  best_students
end 

p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]

#PSEUCODIGO

#En primer lugar esta dado un arreglo de arreglos, con diferentes nombres de estudiantes y con 
#sus respectivas calificaciones.
#Se define un meotodo para poder realizar ciertas acciones, es decir que se elegiran a los 
#mejores estudiantes.

#Al definir el metodo best_students(students) que recibe el arreglo
#Se define un array vacío  donde se colocaran los mejores estudiantes y sus repectivas 
#calificaciones. best_students = []
#Se define dos variables que lograran acceder a los elementos de nuestro arreglo. x, y = 0,0
#Se utiliza WHILE que indica que mientras la variable "y" sea menor al largo del parámetro students, 
#realizara lo siguiente 

#Asignar a la variable current_student el valor de la posicion "x" y "y" del arreglo 
#IF el valor del arreglo current_students en la posición uno (la calificación) es igual a diez
#entonces empujar (PUSH) el valor de la posicion cero del arreglo current_students (NAME) al arreglo best_students
#finaliza condicion (END)

#IF la variable "x" es igual al largo menos uno del arreglo students de la posición "y" THEN (entonces)
#asignarle cero a "x" e incrementar "y" en uno
#De otra forma ELSE se incrementar "x" en uno
#Finaliza  condición (END)
#Fin de While (END)
#Regresar el arreglo best_students
#Fin del método (END)
#Se realizan la pruebas correspondientes: p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]

























