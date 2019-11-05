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

def isConsecutive(array)
   lastNum = array[0]
   array[1, array.count].each do |num|
      if lastNum != num - 1
         return false
      end
      lastNum = num
   end
   true
end

def getSum(array)
    result = array.inject(0){|sum,x| sum + x }
    return result
end

say_hello('Dr. Yang')
puts add2(2)
array = [1,2,3]
puts isConsecutive(array)
puts getSum(array)
