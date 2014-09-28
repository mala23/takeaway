require 'order'

describe Order do

	let(:order) { Order.new }
	let(:line_item) { double :line_item }
	
	context "(on initialization)" do

		it 'should have an empty array of LineItems' do
			expect(order.line_items).to eq([])
		end

	end

	it 'should be able to add line items to the list' do
		order.add_line_item(:line_item)
		expect(order.line_items.count).to eq(1)
	end

	it 'should be able to calculate a grand_total' do
		line1 = double :line_item, :total => 3
		line2 = double :line_item, :total => 7
		order.add_line_item(line1)
		order.add_line_item(line2)
		expect(order.grand_total).to eq(10)
	end

end