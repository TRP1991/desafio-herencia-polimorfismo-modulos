=begin
 
Estudiante: Tamara Rubilar Pinilla 

Ejercicio 1

Utilizando los principios de Herencia y Polimorfismo, refactoriza el siguiente código para eliminar lainnecesaria cantidad de sentencias if en los métodos ask e introduce.(3 puntos )
    
=end

class Person
    def initialize(first, last, age) #Inicio constructor 
        @first_name = first
        @last_name = last
        @age = age
       
    end
    def birthday
        @age += 1
    end
end

class Student < Person #Inicio de Herencia, Polimmorfismo y creación de métodos
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end
