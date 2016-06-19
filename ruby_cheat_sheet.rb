#ARRAY METHODS


# & returns common element. doesn't modify original
=begin
arr1 = [1, 2, 3]
arr2 = [2, 5, 6]
print(arr1 & arr2)
puts()
puts("arr1: " + arr1.to_s)
puts("arr2: " + arr2.to_s)
=end

# + concatenates athe ARRAY.. doesn't modify the original
=begin
arr1 = [6, 7, 8]
arr2 = [8, 9, 6]
print(arr1 + arr2)
puts("arr1: " + arr1.to_s)
puts("arr2: " + arr2.to_s)
=end

# - returns a new array that has elements from first - elements in second
=begin
arr1 = [1, 2, 5]
arr2 = [2, 8, 5]
print(arr1 - arr2)
puts()
puts("arr1: " + arr1.to_s)
puts("arr2: " + arr2.to_s)
=end

# << appends and modifies the first array. if 
# if you append an array to first one,
# there will be  only on additional element in first 
# array which is the second one
=begin
arr1 = [1, 2, 3]
arr2 = [100, 200, 300]
arr1 << arr2
print(arr1)
=end

# clear : clears all element. in-place
=begin
arr1 = [1, 2, 3]
puts(arr1.to_s)
arr1.clear
=end

# compact: removes all nil. returns a new array
# compact!: removes all nil. in-place
=begin
arr = ['h', nil, 'e', 'nil', 'y']
puts(arr.compact.to_s)
puts(arr.to_s)
arr.compact!
puts(arr.to_s)
=end

# delete(ele) deletes ele if found. returns no exception
# delete_at(index) deletes item at index if found. 
#no exception for an invalid index
=begin
arr = ['a', 'b', 'c', 'd', 'e', 'f']
arr.delete('c')
puts(arr.to_s)
arr.delete_at(19)
puts(arr.to_s)
=end

# flatten : unpacks nested array
# flatten! : inplace flatten
=begin
arr1 = [[1,2,3],[4,5,6]]
puts(arr1.flatten.to_s)
puts(arr1.to_s)
=end

# reverse: reverse elements
# reverse!: inplace reverse
=begin
arr1 = ['a', 'b', 'c']
puts(arr1.reverse.to_s)
puts(arr1.to_s)
arr1.reverse!
puts(arr1.to_s)
=end

=begin
#HASHING
# initialization.
# while intialization you can specify default values for all keys
h1 = Hash.new
puts(h1['h'])
movie_release_date = Hash.new('coming soon')
puts(movie_release_date['tintin'])

movie_release_date['titanic'] = '2015'
movie_release_date['avatar'] = '2014'

# using the same key twice overwrites older value
car_color = Hash.new
car_color['Ferrari'] = 'Red'
puts(car_color['Ferrari'])
car_color['Ferrari'] = 'Yellow'
puts(car_color['Ferrari'])

# short-hand for creating hash
brand = {
	"gto"=> "ford",
	"enzo"=> "ferrari",
	"benz"=> "mercedes"
}
puts(brand['benz'])

# assigning one hash variable to another 
# will create an alias
company = brand
brand["benz"] = "Daimler-Chrysler"
puts(brand["benz"])
puts(company["benz"])
# use clone if you want to create a separate copy
cities = brand.clone
cities["enzo"] = "Modena"
cities["benz"] = "sttutgart"
puts(cities.to_s)
puts(brand.to_s)

# ALWAYS ASSUME THAT HASH IS UNOREDERED
# THERE IS NO ORDER MAINTAINED FOR THE keys

# SORTING HASH WORKS WHEN ALL KEYS ARE OF SAME TYPE
# YOU CAN WRITE A CAOMPARATOR TO PERFORM CUSTOM SORTING


# merge : combines to hashes. overwrites the values
# is not inplace
capital = { "italy": "milan",
			"belgium": "brussels",
			"usa": "washington"}
continent = {"italy": "europe",
			 "finland": "europe"}
capital.merge(continent)
puts(capital.to_s)

# values ; returns an array of values
# keys : returns a array of keys
puts("keys: " + capital.keys.to_s)
puts("values: " + capital.values.to_s)


#delete delets key-value pair
alpha = {'a'=> 1, 'b'=> 2, 'c'=> 3}
alpha.delete('a')
puts(alpha.to_s)

# SINCE hash.keys and hash.values return array
# you can combine with array methods for interesting results

h1 = {'a'=>1, 'b'=>2, 'c'=>3, 'd'=>4}
h2 = {'a'=>'One', 'B'=>2, 'c'=>'Three', 'd'=>4}

puts((h1.keys & h2.keys).to_s)
puts((h1.values & h2.values).to_s)
puts((h1.keys + h2.keys).to_s)
puts((h1.keys << h2.keys).to_s)
puts((h1.keys << h2.keys).flatten.reverse.to_s)


# SETS
# used to create an unordered collectio of items
# duplicates are ignored
require "Set"
s1 = Set.new( [1, 2, 3, 4, 5, 2, 1, 7] )
p(s1)

#  == to compare sets

# to sort the set, convert it to array
# using to_a method and then sort it

weekdays = Set.new(%w(Monday, Tuesday, Wednesday, Thursday, Friday))

p(weekdays.to_a.sort)



# LOOP
for i in [1, 2, 3] do 
	print(i , " ")	
end

puts()
# same as
[1, 2, 3].each do |i|
	print(i, " ")
end

puts()
for i in ['one', 'two', 'three'] do
	print(i, " ")
end

puts()
['one', 'two', 'three'].each do |ele|
	print(ele, " ")
end

puts()
# in one line. do is compulsory
for alpha in ['a', 'b', 'c'] do print(alpha + '$ ') end

puts()
# using range
for num in 1..5
	print(num.to_s + " ")
end

puts()
(1..5).each do |i|
	print(i.to_s + " ")
end



# block paramter are variables declread betwen ||
[[1, 2, 3],[3,4,5],[6,7,8]].each do |a,b,c|
	puts("#{a}, #{b}, #{c}")
end

#upto and downto
0.upto(10) do |i|
	print (i.to_s + " ")
end


puts()
10.downto(1) do |i|
	print (i.to_s + " ")
end


#ITERATING OVER SUB-ARRAY
multiarray = [['one', 'two', 'three', 'four'],
				[1, 2, 3,4]]
for (a, b, c, d) in multiarray
	puts("a: #{a} b: #{b} c: #{c} d: #{d}")
end

puts()
#same as 
multiarray.each do |a, b, c, d|
	puts("a: #{a} b: #{b} c: #{c} d: #{d}")
end


# UNTIL: EXECUTES as long as condition is false
i = 0
arr = [1, 2, 3, 4, 5]
until i == arr.length
	print(arr[i].to_s + " ")
	i += 1
end


# LOOP: LOOPS UNTIL WE SPECIFY BREAK condition
# DOESN'T CHECK A CONDITION BY ITSELF
# without a break statement, it loops forever
i = 0
arr = ['a', 'b', 'c', 'd']
loop do
	print(arr[i] + " ")
	i += 1
	if i == arr.length
		break;
	end
end



# ENUMERABLE METHODS
# collect
arr = (1..5).collect{
	|i| i
}

puts(arr.to_s)

squares = (1..10).collect{
	|i| i * i
}
puts(squares.to_s)

# when collect is used on hash
# it retursn an array of key value pair
cars = {"ferrari"=>"enzo",
		"lamborghini"=>"gallardo",
		"aston martin"=>"one-77",
		"pagani"=>"zonda"}

pairs = cars.collect{|i| i}
puts(pairs.to_s)

# include? returns true if it is present
p( squares.include?(4))
p( squares.include?(14))
p( "Max: " + squares.max.to_s)

# min max and sort for enumerable
alpha = {"d"=>4,
		"c"=>3,
		"a"=>1,
		"b"=>2,
		}
# min max and sort based on keys
p(alpha.min)
p(alpha.max)
p(alpha.sort)

# custom sort


h = {"one"=>"for sorrow",
	"two"=>"for joy",
	"three"=>"for a girl",
	"four"=>"for a boy"}
p(h.min)
p(h.max)
#based on keys
p(h.sort{|a,b|a.to_s<=>b.to_s})
p(h.sort{|a,b|a[0].length <=>b[0].length})


# IF ELSE
aDay = 'Wednesday'
if aDay == 'Saturday' or aDay == 'Sunday'
	daytype = 'weekend'
else
	daytype = 'weekday'
end

# then is optional if it is multiline statement
x = 5
if x == 5 then puts( 'ok' ) end

# you can use and, or, not OR && || !
# always use parenthesis while matching boolean operators

# input validation
puts"Enter value bw 1 and 1000! or 'q' to quit"
input = gets().chomp()

while input != 'q'

	if input == 'q'
		puts "bye"
	elsif input > 800 && input <= 1000
		puts"That's too high"
	elsif input <= 800 && input > 0
		puts"That's affordable"
	else
		puts"Enter a valid value: 1-1000 or 'q'"
	end
		
	puts"Enter value bw 1 and 1000! or 'q' to quit"
	input = gets().chomp()
end


#=== is used to test whether an item belongs to a range
# (1..5) === i . this is valid
# i === (1..5) this is not
def workday( num )
	if num == 1 then puts("Monday")
	elsif num == 2 then puts("Tuesday")
	elsif num == 3 then puts("Wednesday")
	elsif num  == 4 then puts("Thurdsday")
	elsif num == 5 then puts("Friday")
	elsif (6..7) === num then puts("Weekend")
	else puts("Wrong paramter")
	end
end

workday(1)
workday(6)
workday(7)
workday(8)


#alternate way for if
x = 10
begin
	puts"inside if"
end if x == 10

begin
	puts"inside unless"
end unless x == 100

# CASE STATEMENT RUBY'S SWITCH
# there are no breaks. once the match is found the block will be exited 
# further conditions will not be checked
i = 1
case(i)
	when 1 then puts("i = #{i}")
	when 2 then puts("#{i} is the only even prime")
	when 3 then puts("it's three")
	#never executed when i  = 1
	when 1 then puts("one")
	when (6..8) then puts("it is 6 or 7 or 8")
	when 9, 10 then puts("it is 9 or 10")
	else puts("some value")
end

day = 1
case(day)
	when 1 then puts("monday")
	when 2 then puts("tuesday")
	when 3 then puts("wednesday")
	when 4 then puts("Thurdsday")
	when 5 then puts("Friday")
	when 6, 7
		puts("It's Saturday") if day == 6
		puts("It's Sunday") if day == 7
		puts("... a weekend")
	when 5 then puts("never executes")
	else puts("random value")
end



# CLASS METHODS 
# def <ClassName>.methodname.
# objects cannot call class methods
# used when we want to run a mmethod without creating objects
# also to run a method before an object is created
class MyClass
	def MyClass.classMethod
		puts "This is a class method"
	end
	def instanceMethod
		puts "inside instanceMethod"
	end
end


#CLASS variables
# must be intialized
# instance variables are unique to instances
# check this example and read about it on page 127
class MyClass
	@@classvar = 1000 
	@instvar = 1000 # This belongs to class. since class is also an object

	def MyClass.classMethod
		if @instvar == nil then
			@instvar = 10
		else
			@instvar += 10
		end

		if @@classvar == nil then
			@@classvar = 10
		else
			@@classvar += 10
		end
	end

	def instanceMethod
		if @instvar == nil then 
			@instvar = 1
		else
			@instvar += 1
		end

		if @@classvar == nil then
			@@classvar = 1
		else
			@@classvar += 1
		end
	end
	def showVars
		return "instance method: @instvar:#{@instvar} @@classvar:#{@@classvar}"
	end
	
	def MyClass.showVars
		return "class method: @instvar:#{@instvar} @@classvar: #{@@classvar}"
	end
end

for i in (0..2) do
	ob = MyClass.new
	MyClass.classMethod
	ob.instanceMethod
	puts(MyClass.showVars)
	puts(ob.showVars)
end

# Single-ton method: method that belongs only to 
# one instance of a class
class Animal
	def initialize( aSpeech )
		@speech = aSpeech
	end
	def talk
		puts(@speech)
	end
end

cat = Animal.new("Meow")
dog = Animal.new("Bow=wow")
man = Animal.new("buon giorno")
wolf = Animal.new("growl")

# wolf howls on full moon so we want to include
# howl method. if we include it in Animal
# then cat, dog, man can also howl
# we can a create a child class of Animal called
# werewolf and include a howl method in that and instantiate an object
# but it's extra code. instead we create a singlton method
FULLMOON = true
def wolf.howl
	if FULLMOON then 
		puts("HOoooooooowlllll")
	else
		talk
	end
end

# to make sure only wolf can call howl we can do this.
animals = [cat, dog, man, wolf]
animals.each do |ani|
	#if ani.singleton_methods.include?("howl") then
	if ani.respond_to?(:howl) then
		ani.howl
	end
end

# the above code avoids undefined method error when 
# other animals try to call howl


# singleton class: a class that defines a single object
# you can achieve similar effect by 
# creating a singleton class

class << wolf
	def howl2
		puts( "this is holllling from singleton class")
	end
end

wolf.howl2

# there is not much difference bw singleton
# class and singleton methods. they are 2 
# different syntax to add methods to 
# a specific object rather than defining it inside the class


# RETURN FROM METHODS
# all methods return a value, you may chose not to use it.
# it will the result of last expression
# otherwise it will be nill

def method1
	a = 1
	b = 2
	c = a + b
end

def method2
	a = 1
	b = 2 
	c = a + b
	return b
end

def method3
	"hello"
end

def method4
	a = 1 + 2
	"goodbye"
end

def method5
end


# functions can retur multiple values as an array
def ret_multi
	greeting = "hello world!"
	a = 1
	b = 2.0
	return a, b, 3, "four", greeting, 6 * 10
end

# functions can return hash
def ret_hash
	return {'a'=>'hello', 'b'=>'goodbye'}
end

# default parameters
def display(a = 1, b = 2, c = 3)
	return a, b, c
end

p( display())
p( display('A'))

# var-arg arguments
def displayVararg(a = 1, b = 2, *d)
	return a, b, d
end

p( displayVararg(100, 200, 300, 400, 500))

# ruby always creates a new object for string, float objects
# for integer whenever the value changes inside the function,
# a new integer will be created.
# any changes made inside the function will not be available until
# it is returened
def returnUnchanged( aStr, bStr)
	anotherStr = aStr + " " + bStr
	return anotherStr.reverse
end

str1 = "dlrow"
str2 = "olleh"
str3 = returnUnchanged(str1, str2)
p("str1: #{str1}")
p("str2: #{str2}")
p("str3: #{str3}")

# methods that end with ! will modify 
# the original objecs passed into the function
# also methods that uses << inside the function
# will also the same string that is present outside

def concat(aStr, bStr)
	aStr = aStr << " " << bStr
	return aStr
end

strA = "super"
strB = "man"
concat(strA, strB)
p("strA: #{strA}")


# multiple assignments
a, b, c = 1, 2, 3

# extra variables will be assigned null values
def retFourValues
	return 10, 20, 30, 40
end
a, b, c, d, e = retFourValues
puts("a:#{a}  b:#{b} c:#{c} d:#{d} e:#{e}")

# pass by reference or pass by value

def refOrVal( anArg )
	puts ( "#{anArg.object_id}\n\n")
end

class TempClass
end

i, f, s, ob = 10, 10.5, "hello world", TempClass.new

puts ("#{i}.object_id = #{i.object_id}")
refOrVal(i)
puts ("#{f}.object_id = #{f.object_id}")
refOrVal(f)
puts ("#{s}.object_id = #{s.object_id}")
refOrVal(s)
puts ("#{ob}.object_id = #{ob.object_id}")
refOrVal(ob)

# ALWAYS USE THE RETURN VALUE FROM A FUNCTION
# DO NOT USE THE ARGUMENTS PASSED AS THE RESULT 
# THINKING THAT THE ARGUMENTS INSIDE THE FUNCTION
# WHEN USED OUTSIDE WILL RETAIN THE CHANGES


# EXCEPTION HANDLING
begin
	x = 1/ 0
	#risky code goes here
rescue Exception
	x = 0
	puts ("assigining 0 to x")
	puts($!.class)
	puts ($!)
	# $! is exception object
	# $!.class displays the class name
end

# you can assigne exception to a variable
begin
	x = 1/ 10
rescue Exception => exc # exc is a variable 
	puts("division by zero not possible")
	puts(exc.class)
	puts(exc)
end



#exception handling block that handles different kinds
#of exception
def calc( val1, val2 )
	begin
		result = val1 / val2
	rescue TypeError, NoMethodError => e
		puts( e.class )
		puts( e )
		puts( "One of the values is not number!" )
		result = nil
	rescue Exception => e
		puts( e.class )
		puts( e )
		result = nil
	else
		# code is executed when no exception occurs.
	ensure # same as final in java
		puts( "I get executed no matter what." )
		puts( "Clean up code goes here." )
	end
	return result
end

# calc() can handle different kinds of errors
#calc( 20, 0 )
#calc( 20, "100" )
#calc( "100", 100 )

# FORMAT FOR EXCEPTION HANDLING

begin
	#risky code
	<some condition>
		raise <exception type> # when you want to raise an exception

rescue <Exception type> 
	# code to execute when exception occurs

	<some condition>
		retry # execute the risky code again, if condtion is true.
else
	# code to execute when no exception occurs
ensure
	# clean up code
	# executes whether exception occurs/not
end

# Creating a custom exception
class CustomException < Exception
	def to_str
		"My custom exception is executed"
	end
end

# eg for raise and custom exception
class NoNameError < Exception
	def to_str
		"Not a valid name"
	end
end

def sayHello( aName )
	begin
		if (aName == " " ) or (aName == nil ) then
			raise NoNameError
		end
	rescue Exception => e
		puts( e.class )
		puts( "error message: " + e.to_s)
		puts( e.backtrace )
	else
		puts( "Hello #{aName} ")
	end
end


# SYMBOL
# it's an identifier that begins with :
# it's not a string. it;s not a constant/variable
# you cannot assign value to symbol as the value is itself
# :name = 'jerry' is an error

# SYMBOL: you can pass as an argument
def say( message )
	if (message == :hello)
		puts( "Hellow" )
	elsif (message == :good_morning)
		puts( "good morning" )
	else
		puts( "Random message" )
	end
end

def saySomething( arg )
	case arg
	when :hello then puts( "inside case, HELLO")
	when :good_morning then puts( "inside case, Good morning")
	else puts( "inside case, ELSE part" )
	end
end

say(:hello)
say("hello")

saySomething(:good_morning)
saySomething("good_morning")

# MODULES
# can contain classes, constants, methods
# cannot be used to creat instance of module
# modules cannot have Parent module or child module
# wraps methods, constants and classes
# whatever you define inside one module are visible to each other
# but invisible to other modules
# Math module has math related classes, constants
# Kernel module has methods like print, puts, gets

module MyModule
	GOODMOOD = "happy"
	BADMOOD = "grumpy"

	# ordinayr method
	def greet
		return "I'm #{GOODMOOD}"
	end

	# module method
	def MyModule.greet
		puts( "inside module method" )
		return "I'm #{GOODMOOD}"
	end
end

# t access module constant use ::
puts(MyModule::GOODMOOD)

# in order to access instance methods of a module
# use include statement.
# everything defined inside the module is now available
include MyModule

# to access instance method, you do it in the normal way
# to access module method, you would use . notation
puts ( greet )
puts( MyModule.greet )

# process of including module is called mixing in
# when you mix modules inside a class, an instance of the class
# can use instance methods of the module
class MyClass
	include MyModule
	def sayHi
		puts( greet )
	end
end

# any object of MyClass
# can access members of MyModule
ob = MyClass.new
ob.sayHi
puts(ob.greet)



##FILE into
# use following line to read the file one line at a time
# no need to open and close the file before reading it
IO.foreach("README.txt"){|line| print (line)}

# read lines into an array
lines_in_file = IO.readlines("README.txt")
lines_in_file.each  {|line| print (line )}


# above lines are same as:
File.foreach("README.txt"){|line| print ( line )}

lines_arrray = File.readlines("README.txt")
lines_arrray.each{|line| print( line )}


# FILES CAN BE OPENED AND CLOSED EXPLICILTY AS WELL
f = File.new("myfile.txt", "w")
f.puts("I", "wandered", "lonely", "as", "a", "cloud")
f.close

charCount = 0
lineCount = 0
fr = File.new("myfile.txt", "r")
while !( fr.eof ) do
	c = fr.getc()
	if ( c.ord == 10 ) then
		lineCount += 1
		puts(" <End of line> #{lineCount}")
	else
		putc( c )
		charCount += 1
	end
end

if fr.eof then
	puts( "<End of file>")
end
f.close
puts("this file has #{lineCount} lines and #{charCount} characters")

# the above program will not run in ruby 1.8



# use File.exist? to test existence of a file.
# it can be used for directories as well.
# while specifying a path use C:\\ instead of C:\
# since a single \ will be treated as an escape character

if File.exist?("C:\\") then
	puts( "Yup, you have a C:\ directory" )
else
	puts( "Eeeek! Can't find a C:\ drive!")
end

if File.exist?("Z:\\") then
	puts( "Yup, you have a Z:\ directory")
else
	puts( "You don't have a Z:\ direcory")
end

# if you wan't to specifically check for directories
# use File.directory?

def dirOrFile( aName )
	if File.directory?( aName ) then
		puts( "#{aName} is a directory" )
	else
		puts( "#{aName} is a file" )
	end
end

=end
#REGEX
p( /abc/ =~ 'abc')
p( /abc/ =~ 'xyzabczyzabc')
p( /abc/ =~ 'xycab')
p( /[abc]/ =~ 'xyzcab')

# other ways of creating regular expression objects
regex1 = Regexp.new('^[a-z]*$')
regex2 = /^[a-z]*$/
regex3 = %r{^[a-z]*$}

def test( aStr, aRegex )
	if aRegex =~ aStr then
		puts( "All lowercase" )
	else
		puts( "Not all lower case" )
	end
end


# find a match at the beginning
puts( /^a/ =~ 'abc' )
puts( /^b/ =~ 'abc' )

# find a match at the end
puts( /c$/ =~ 'abc' )
puts( /d$/ =~ 'abc' )

# find if all the letters is uppercase/lowercase
aStr = "HELLO WORLD"

case aStr
	when /^[a-z 0-9]*$/ then puts( "Lowercase" )
	when /^[A-Z 0-9]*$/ then puts( "Uppercase" )
	else puts( "Mixed case\n" )
end


# open a ruby file and display all lines that are comments
File.foreach( 'regex1.rb' ){ |line|
	if line ~= '^\s*#/' then
		puts line
	end
}





