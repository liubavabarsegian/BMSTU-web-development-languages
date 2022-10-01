# def foo(x)
#     puts "Printed from method"
#     yield(x)
# end

# foo(2) do |n|
#     puts n ** n
# end

def foo
    10/0
rescue ZeroDivisionError
    p "aalal"
rescue
    p "CAUGHT ERROR"
ensure
    p "print anyways"
end

foo
