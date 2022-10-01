class Person
    attr_reader :name
    attr_writer :name

    @@class_var = 1;  #static variable

    def initialize(name)   #new вызывает initialize
        @name = name
    end
    def name 
        @name
    end
    def name= (name)
        @name = name
    end
end

person = Person.new("John")
p person.name