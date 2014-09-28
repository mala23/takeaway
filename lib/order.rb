class Order

	attr_accessor :line_items, :grand_total

	def initialize
		@line_items = []
		@grand_total = 0
	end

	def add_line_item(line_item)
		@line_items << line_item
	end

	def grand_total
		@line_items.each do |item|
			@grand_total += item.total
		end
		@grand_total
	end

end