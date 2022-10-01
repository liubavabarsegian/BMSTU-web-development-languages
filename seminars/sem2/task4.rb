module MiddleName
    def middle_name
        "Mark"
    end
end
class Name
    include MiddleName
    def name
        "John"
    end
end

class FullName < Name  #inheritance
    def name
        "#{super} Smith"
    end    
end


p Name.new.name
p FullName.new.name

p FullName.new.middle_name