class Thing
	@@num_things = 0
	def initialize(aName, desc)
		@name = aName
		@desc = desc
		@@num_things += 1
	end
	
	def set_name(aName)
		@name = aName
	end
	
	def get_name
		return @name
	end
	
	def objCount
		puts"There are #{@@num_things}"
	end
	
=begin	
	def set_desc(desc)
		@desc = desc
	end
	
	def get_desc
		return @desc
	end
=end
	def desc
		return @desc
	end
	
	def desc=(adesc)
		@desc = adesc
	end
	
end

class Treasure < Thing
	def initialize(aName, desc, aValue)
		super(aName, desc)
		@value = aValue
	end
	
	def get_value
		return @value
	end
	
	def set_value(aval)
		@value = aval
	end
	
end

class NThing
	attr_reader :desc
	attr_writer :desc
	attr_writer :name
	
	def initialize(aName, aDesc)
		@name = aName
		@desc = aDesc
	end
	
	def name
		return @name.capitalize
	end
end

class NTreasure < NThing
	attr_accessor :value
	
	def initializer( aName, aDesc )
		super(aName, aDesc)
	end
end

class Person
	attr_accessor(:name, :age, :gender)
end

tony = Person.new
tony.name = "Tony startk"
tony.age = 42
tony.gender = "M"

puts (tony.name)

pre = NThing.new('sword', 'elvish golden sword')
puts "Properties of pre: #{pre.inspect}"

preT = NTreasure.new('coins', 'rare amazonian coins')
preT.value = 500000
puts "Properties of preT: #{preT.inspect}"

aT = Thing.new('a', 'aa')
bT = Thing.new('b', 'bb')
puts(aT.objCount)


	
