class Person
    def name
        "example"
    end

    def self.name
        "class"
    end
end

class Human < Person
    def name
        hello
    end
end

p Person.name
p Person.new.name
