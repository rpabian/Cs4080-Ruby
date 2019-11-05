#Single line comment
=begin
Multiple line
Comments
=end

def say_hello(name)
   #with out new line
   print "Hello, "
  # with new line
   puts  "#{name}"
   puts "Welcome to Ruby!"

end

#without return
def add2(num)
    num+2
end

#with return
def getSum(array)
    result = array.inject(0){|sum,x| sum + x }
    return result
end

say_hello('Everyone’')
puts add2(2)
array = [1,2,3]
puts getSum(array)


