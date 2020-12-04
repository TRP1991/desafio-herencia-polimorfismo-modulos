=begin
 
Estudiante: Tamara Rubilar Pinilla 

Ejercicio 2

Crear la clase Animal con un atributo nombre. Agregar un método getter para el atributo nombre(1 punto)Crear las clases Ave, Mamifero e Insecto. Ambas heredan de Animal(1 punto)
Crear las clases Pingüino, Paloma y Pato. Las tres heredan de Ave(1 punto)
Crear las clases Perro, Gato y Vaca. Las tres heredan de Mamifero (1 punto)
Crear las clases Mosca, Mariposa y Abeja. Las tres heredan de Insecto(1 punto)
Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo de definir las habilidades y tipo de alimentación de cada animal (2 puntos)
    
=end

module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end
module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal #Creación clase Animal 
    attr_reader :nombre #método getter para el atributo nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

#Creación de clases que heredan de Animal 
class Ave < Animal
end

class Mamifero < Animal
end

class Insecto < Animal
end

#Creación de clases que heredan de Ave
class Pinguino < Ave
    include Habilidades::Nadador, Habilidades::Caminante, Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador, Habilidades::Caminante, Alimentacion::Carnivoro
end

class Pato < Ave
    include Habilidades::Nadador, Habilidades::Volador, Habilidades::Caminante,
    Alimentacion::Carnivoro, Alimentacion::Herbivoro
end

#Creación de clases que heredan de Mamifero
class Perro < Mamifero
    include Habilidades::Caminante, Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Habilidades::Caminante, Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante, Alimentacion::Herbivoro
end

#Creación de clases que heredan de Insecto
class Mosca < Insecto
    include Habilidades::Volador, Habilidades::Caminante,
    Alimentacion::Carnivoro, Alimentacion::Herbivoro
end

class Maripoza < Insecto
    include Habilidades::Volador, Habilidades::Caminante,
    Alimentacion::Herbivoro
end

class Abeja < Insecto
    include Habilidades::Volador, Habilidades::Caminante,
    Alimentacion::Herbivoro
end


animal1 = Pinguino.new('Pinguinito').nombre
habilidad1 = Pinguino.new('Pinguinito').nadar
alimentacion1 = Pinguino.new('Pinguinito').comer

puts "Hola soy un #{animal1}, #{habilidad1} y #{alimentacion1}
