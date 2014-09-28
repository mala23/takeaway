class Dish

	attr_reader :name, :price
	
	def initialize(name, price)
		@name, @price = name, price
	end

	def inspect
		"a #{@name} costs #{@price} quid"
	end

end

# burger = Dish.new("burger", 3)
# p burger