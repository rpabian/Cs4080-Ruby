#Single line comment
=begin
Multiple line
Comments
=end

def say_hello(name)
   print "Hello, "
   puts  "#{name}"
   puts "Welcome to Ruby!"

end

def add2(num)
    num+2
end

def getSum(array)
    result = array.inject(0){|sum,x| sum + x }
    return result
end

say_hello('Diane')
puts add2(2)
array = [1,2,3]
puts getSum(array)


