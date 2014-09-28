class LineItem

	attr_reader :dish, :quantity

	def initialize(dish, quantity=1)
		@dish, @quantity = dish, quantity
	end

	def inspect
		"this line item contains #{@quantity} #{@dish}"
	end

	# def cost
	# 	dish.price * quantity
	# end

end

# burger = LineItem.new("burger", 3)
# burger.inspect