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

def isConsecutive(array)
   lastNum = array[0]
   array[1, array.count].each do |num|
      if lastNum != num - 1
         return false
      end
      lastNum = num
   end
   return true
end

#with return
def getSum(array)
    #the 0 base case is needed so that 0 will be returned on an empty array instead of nil
    result = array.inject(0){|sum,x| sum + x }
    return result
end

say_hello('Everyone')
puts add2(2)
array = [1,2,3]
puts isConsecutive(array)
puts getSum(array)
