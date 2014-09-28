class Order

	attr_accessor :line_items

	def initialize
		@line_items = []
	end

	def add_line_item(line_item)
		@line_items << line_item
	end

end