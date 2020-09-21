













































myStr = String.new("THIS IS TEST")
foo = myStr.downcase!
puts "#{foo}"
puts "#{myStr}"




# $KCODE = 'e'

# %{Ruby is fun.}
# equivalent to "Ruby is fun."
# %Q{ Ruby is fun. } equivalent to " Ruby is fun. "
# %q[Ruby is fun.]
# equivalent to a single-quoted string
# %x!ls! equivalent to back tick command output `ls`


# x, y, z = 12, 36, 72
# puts "The value of x is #{ x }."
# puts "The sum of x and y is #{ x + y }."
# puts "The average was #{ (x + y + z)/3 }."



# first = hello = {1=>'first',2=>'second'}
# value = first.values
# key = first.keys
# print "#{first}\n"
# print "#{value}\n"
# print "#{key}\n"

# second = hell = {1=>'first',2=>'second'}
# value = first.values
# key = first.keys
# print "#{first}\n"
# print "#{value}\n"
# print "#{key}\n"
# second[1] = "third"
# second.clear
# print "#{first}\n"
# print "#{value}\n"
# print "#{key}\n"
# a = second.shift
# print "#{a}\n"

# puts "both are same" if first[2]==second[2]

# first = Hash.new("months")
# first = {1=>'jan',2=>'feb'}
# values = first.values
# puts "#{first}"

# $, = ", "
# months = Hash.new( "month" )
# months = {"1" => "January", "2" => "February"}
# keys = months.keys
# puts "#{keys}"




# BEGIN 
# {
#     # BEGIN block code
#     puts "BEGIN code block"
# }
# END 
# {
#     # END block code
#     puts "END code block"
# }
#     # MAIN block code
# puts "MAIN code block"


# def test(&stream)
#     stream.call
# end
# test {puts"hello world"}

# def test(&block)
#     block.call
# end
# test { puts "Hello World!"}

# def test1
#     yield 1
#     puts "you are in the method test1"
#     yield 100
# end
# test1{|i| puts "you are in the block #{i}"}


# def test
# yield 5
#     puts "You are in the method test"
# yield 100
# end
# test {|i| puts "You are in the block #{i}"}



# def test
#     puts "You are in the method"
# yield
#     puts "You are again back to the method"
# yield
# end
# test {puts "You are in the block"}





# # define a class
# class Box
#     attr_accessor :width, :height
#     # construcxtor method
#     def initialize(w,h)
#     @width, @height = w, h
#     end
#     # instance method
#     def getArea
#     @width * @height
#     end
#     end
#     # create an object using new
#     box1 = Box.new(10, 20)
#     # create another object using allocate
#     box2 = Box.allocate
#     # call instance method using box1
#     a = box1.getArea()
#     puts "Area of the box is : #{a}"
#     # call instance method using box2
#     a = box2.getArea()
#     puts "Area of the box is : #{a}"




# # define a class
# class Box
#     # constructor method
#     def initialize(w,h)
#     @width, @height = w, h
#     end
#     # instance method by default it is public
#     def getArea
#     getWidth() * getHeight
#     end
#     # define private accessor methods
#     def getWidth
#     @width
#     end
#     def getHeight
#     @height
#     end
#     # make them private
# private :getWidth, :getHeight
# # instance method to print area
# def printArea
# @area = getWidth() * getHeight
# puts "Big box area is : #@area"
# end
# # make it protected
# protected :printArea
# end
# # create an object
# box = Box.new(10, 20)
# # call instance methods
# a = box.getArea()
# puts "Area of the box is : #{a}"
# # try to call protected or methods
# box.printArea()



# class Box
#     # Initialize our class variables
#     @@count = 0
#     def initialize(w,h)
#     # assign instance avriables
#     @width, @height = w, h
#     @@count += 1
#     end
#     def self.printCount()
#     puts "Box count is : #@@count"
#     end
#     end
#     # create two object
#     box1 = Box.new(10, 20)
#     box2 = Box.new(30, 100)
#     # call class method to print box count
#     Box.printCount()




# puts "Enter a value :"
# val = gets
# print "============================="+val




# val1 = "This is variable one"
# val2 = "This is variable two"
# puts val1
# puts val2





# a = [1,2,3,4,5]
# b = Array.new
# b = a.collect
# puts b
# puts a




# ary = [1,2,3,4,5]
#  ary.each do |i| puts i end



# if ((1..10) === 5)
#     puts "5 lies in (1..10)"
# end
# if (('a'..'j') === 'c')
#     puts "c lies in ('a'..'j')"
# end
# if (('a'..'j') === 'z')
#     puts "z lies in ('a'..'j')"
# end



# score = 70
# result = case score
# when 0..40: "Fail"
# when 41..60: "Pass"
# when 61..70: "Pass with Merit"
# when 71..100: "Pass with Distinction"
# else "Invalid Score"
# end
# puts result




# digits = 0..9
# digits.each do |digit|
#     puts "In Loop #{digit}"
# end



# (2...10).each do |i|
# puts "#{i}"
# end



# time = Time.new
# values = time.to_a
# p values

# time = Time.new
# print "\n Current Time : " + time.inspect
# print "\n Current year : ", time.year # => Year of the date
# print "\n Current month : ", time.month # => Month of the date (1 to 12)
# print "\n Current day : ", time.day # => Day of the date (1 to 31 )
# print "\n Current week year : ", time.wday # => 0: Day of week: 0 is Sunday
# print "\n Current year day : ", time.yday # => 365: Day of year
# print "\n Current hour : ", time.hour # => 23: 24-hour clock
# print "\n Current min : ", time.min # => 59
# print "\n Current sec : ", time.sec # => 59
# print "\n Current usec : ", time.usec # => 999999: microseconds
# print "\n Current zone : ", time.zone # => "UTC": timezone name



# time1 = Time.new
# puts "Current Time : " + time1.inspect
# # Time.now is a synonym:
# time2 = Time.now
# puts "Current Time : " + time2.inspect



# def sample (*test)
#     puts "The number of parameters is #{test.length}"
#     for i in 0...test.length
#         puts "The parameters are #{test[i]} #{test[i+1]}"
#     end
# end
# sample "Zara", "6", "F"
# sample "Mac", "36", "M", "MCA"







# for i in 1..5
#     retry if
#     i > 2
#     puts "Value of local variable is #{i}"
#     end






# for i in 0..5
#     if i < 2 then
#         puts "Value of local variable is #{i}"
#         redo
#     end
# end




# $i = 0
# $num = 5
# until $i > $num do
#     puts("Inside the loop i = #$i" )
#     $i +=1;
# end



# $i = 0 
# num = 10
# while $i<num do 
#     print("inside the loop = #$i \n")
#     $i+=1
# end

# $i = 0
# $num = 5
# until $i > $num do
#     puts("Inside the loop i = #$i" )
#     $i +=1;
# end




=begin


# $i = 1
# num = 5
# begin
#     puts("inside the loop #$i")
#     $i+=1
# end while $i<3

=end

# $i = 0
# $num = 5
# begin
#     puts("Inside the loop i = #$i" )
# $i +=1
# end while $i < $num


# i = 0
# num = 5
# while i<num do 
#     print " it is not true" if i>6
#     print " it is not true : " unless i>6
#     print "Inside the loop i = #{i}\n"
#     i+=1
# end


# $i = 0
# $num = 5
# while $i < $num do
# puts("Inside the loop i = #$i" )
# $i +=1
# end


# age = 2
# case age
# when 0 .. 2
#     puts " 0 to 2"
# when 3 .. 6
#     puts " 2 .. 6"
# when 6 .. 9
#     puts "6 .. 9"
# when 10 .. 12
#     puts " 10 .. 12"
# when 13..16
#     puts " 13..16"
# end






# $age =5

# case $age
#     when 0 .. 2
#         puts "baby"
#     when 3 .. 6
#         puts "little child"
#     when 7 .. 12
#         puts "child"
#     when 13 .. 18
#         puts "youth"
#     else
#         puts "adult"
# end


# $var =1 
# print "1 -- Value is set\n" if $var
# print "2 -- Value is set\n" unless $var
# $var = false
# print "3 -- Value is set\n" unless $var


# x=1
# unless x>10
#     puts "x is less than 2"
# else
#     puts "x is greater than 2"
# end




# class Hello
#     def initialize( hello )
#         @hello = hello
#     end
#     def hello
#         @hello
#     end
# end
# salute = Hello.new( "Hello, Mac!" )
# salute1 = Hello.new( "Hello, Mark!" )
# puts "#{salute.hello}"
# puts salute1.hello







# puts "#{2**3}"
# puts "#{1=== 1.0}"

# (1 .. 10).each do |a|
#     puts "#{a} === #{a===5}"
# end
# (1 .. 100).each do |n|
#     print n ,' '
# end

# (10..15).each do |n|
#     print n, ' '
# end



# hashes = {'abc' => 1 , 'bcc'=> 2, 'ccc'=>3,'ddd'=>40}
# hashes.each do |key, items|
#     puts "key is #{key} and value is #{items}"
# end



# hashes = color = {'red' => 0xf00 , 'green' => 0x0f0 }
# hashes . each do |key, value|
# print key, ' is ',value , "\n"
# end




# hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
# hsh.each do |key, value|
# print key, " is ", value, "\n"
# end


# array = ["friend","hello","how are you",'soon']
# array.each do |item|
#     puts item
# end


# ary = ["fred", 10, 3.14, "This is a string", "last element"]
# ary.each do |i|
#     puts i
# end


# class Example
#     Var1 = 100
#     Var2 = 200
#     def show
#     puts "Value of first Constant is #{Var1}"
#     puts "Value of second Constant is #{Var2}"
#     end
#     end
#     # Create Objects
#     object=Example.new()
#     object.show

# class Example
# VAR1 = 100
# VAR2 = 200
# def show
# puts "Value of first Constant is #{VAR1}"
# puts "Value of second Constant is #{VAR2}"
# end
# end
# # Create Objects
# object=Example.new()
# object.show



# $age = 100
# 5
# case $age
# when 0 .. 2
#     puts "baby"
# when 3 .. 6
#     puts "little child"
# when 7 .. 12
#     puts "child"
# when 13 .. 18
#     puts "youth"
# else
#     puts "adult"
# end




# $var =
# 1
#     print "1 -- Value is set\n" if $var
#     print "2 -- Value is set\n" unless $var
# $var = false
#     print "3 -- Value is set\n" unless $var




# x=1
# unless x>2
#     puts "x is less than 2"
# else
#     puts "x is greater than 2"
# end

# $debug = 1
# print "hello this is less then or equal to 1\n" if $debug <2

# $debug=nil
# print "debug\n" if $debug puts"ok now" else 



# x=4
# if x > 2
#     puts "x is greater than 2 and the value of x is: ",x
# elsif x <= 2 and x!=0
#     puts "x is 1"
# else
#     puts "I can't guess the number"
# end
















































































# class Customer
#     @@no_of_customers=0
#     def initialize(id, name, addr)
#         @cust_id=id
#         @cust_name=name
#         @cust_addr=addr
#     end
#     def display_details()
#         puts "Customer id #@cust_id"
#         puts "Customer name #@cust_name"
#         puts "Customer address #@cust_addr"
#     end
#     def total_no_of_customers()
#         @@no_of_customers += 1
#         puts "Total number of customers: #@@no_of_customers"
#     end
# end
# # Create Objects
# cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
# cust2=Customer.new("2", "Poul", "New Empire road, Khandala")
# # Call Methods
# cust1.total_no_of_customers()
# cust2.total_no_of_customers()






# class Customer
#     def initialize(id,name,addr)
#         @cust_id = id
#         @cust_name = name
#         @cust_addr = addr
#     end

#     def display_details()
#         puts "customer id is: #@cust_id"
#         puts "customer id is: #@cust_name"
#         puts "customer id is: #@cust_addr"
#     end
# end
# # creating and object
# cust1 = Customer.new(1,'sanjay sheel','115 chetan nagar')
# cust2 = Customer.new(1,'sanjay sheel','115 chetan nagar')
# # call methods
# cust1.display_details()
# cust2.display_details()



# class Customer
#     def initialize(id, name, addr)
#     @cust_id=id
#     @cust_name=name
#     @cust_addr=addr
#     end
#     def display_details()
#     puts "Customer id #@cust_id"
#     puts "Customer name #@cust_name"
#     puts "Customer address #@cust_addr"
#     end
#     end
#     # Create Objects
#     cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
#     cust2=Customer.new("2", "Poul", "New Empire road, Khandala")
#     # Call Methods
#     cust1.display_details()
#     cust2.display_details()





# class New_class
#     helo_world = 1
#     def hello
#         puts "Hello Ruby #@helo_world"
#     end
# end

# object = New_class.new
# object.hello

# class Sample
#     def hello
#         puts "Hello Ruby!"
#     end
# end

# object = Sample.new
# object.hello



# class Customer
#     @@no_of_customers = 0
#     def initialize(id, name, addr)
#         @cust_id = id
#         @cust_name = name
#         @cust_addr = addr
#     end

#     def display_details()
#         puts "customer name #@cust_id"
#         puts "customer name #@cust_name"
#         puts "customer name #@cust_addr"
#     end
#     def total_no_of_customers()
#         @@no_of_customers+=1
#         puts "Total number of customers: #@@no_of_customers"
#     end
# end

# cust1 = Customer.new(1,'sanjay sheel','115 chetan nagear, bengali square, indore, m.p.')
# cust2 = Customer.new(2,'shyam sheel','115 chetan nagear, bengali square, indore, m.p.')
# cust1.display_details()
# cust1.total_no_of_customers()
# cust2.display_details()
# cust2.total_no_of_customers()
# #!/usr/bin/ruby
# class Customer
#     @@no_of_customers=0
#     def initialize(id, name, addr)
#         @cust_id=id
#         @cust_name=name
#         @cust_addr=addr
#     end
#     def display_details()
#         puts "Customer id #@cust_id"
#         puts "Customer name #@cust_name"
#         puts "Customer address #@cust_addr"
#     end
#     def total_no_of_customers()
#         @@no_of_customers += 1
#         puts "Total number of customers: #@@no_of_customers"
#     end
# end

# cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
# cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

# cust1.display_details()
# cust1.total_no_of_customers()
# cust2.display_details()
# cust2.total_no_of_customers()






# class Customer
#     @@no_of_customers=0
#     def initialize(id, name, addr)
#         @cust_id=id
#         @cust_name=name
#         @cust_addr=addr
#     end
# end

# first = Customer.new
# first2 = Customer.new


# class Customer
#     no_of_wheels = 0

#     puts 'first class in ruby',no_of_wheels
# end

# cust1 = Customer .    new
# cust2 = Customer    .    new

=begin
Class Vehicle
{
    Number no_of_wheels
    Number horsepower
    Characters type_of_tank
    Number Capacity
    Function speeding
    {
    }
    Function driving
    {
    }
    Function halting
    {
    }
}
=end

=begin
hello this is another type of commment
=end
=begin
This is a comment.
This is a comment, too.
This is a comment, too.
I said that already.
=end

# BEGIN {
#     puts 'hello world'
#     }

# print <<EOF
# This is the first way of creating
# EOF

# print <<"EOF";
# This is the second way of creating
# here document ie. multiple line string.
# EOF

# print <<`EOC`
# # execute commands
# echo hi there
# echo lo there
# EOC

# print <<`EOC`
# # execute commands
# echo hi there
# echo lo there
# EOC

# print <<"foo", <<"bar"
# # you can stack them
# I said foo.
# foo
# I said bar.
# bar

# num = 12.40
# puts num.floor      # 12
# puts 'hello world"s'
