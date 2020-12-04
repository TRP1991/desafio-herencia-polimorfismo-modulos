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
end

def birthday
 @age += 1
end

class Student < Person #Inicio de Herencia, Polimmorfismo y creación de métodos
    def talk
        "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person #Inicio de Herencia, Polimmorfismo y creación de métodos
    def talk
        "¡Bienvenido a la clase de programación con Ruby!"
    end

    def introduce
        "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person #Inicio de Herencia, Polimmorfismo y creación de métodos
    def talk 
        "Aquí es la reunión de apoderados?"
    end

    def introduce 
        "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end


puts Student.new('Tamara','Rubilar', 29).talk
puts Student.new('Tamara','Rubilar', 29).introduce
