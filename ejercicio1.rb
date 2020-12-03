=begin
 
Estudiante: Tamara Rubilar Pinilla 

Ejercicio 1

Utilizando los principios de Herencia y Polimorfismo, refactoriza el siguiente código para eliminar lainnecesaria cantidad de sentencias if en los métodos ask e introduce.(3 puntos )
    
=end

class Person
    def initialize(first, last,) #Inicio constructor 
        @first_name = first
        @last_name = last
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

class Teacher < Person 
    def talk
        puts "¡Bienvenido a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def talk 
        puts "Aquí es la reunión de apoderados?"
    end

    def introduce 
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

#puts Student.new('Tamara','Rubilar').talk
