require 'order'

describe Order do

	let(:order) { Order.new }
	let(:line_item) { double :line_item }
	
	context "(on initialization)" do

		it 'should have an empty array of LineItems' do
			expect(order.line_items).to eq([])
		end

	end

	it 'should be able to accept a LineItem' do
		order.add_line_item(:line_item)
		expect(order.line_items.count).to eq(1)
	end

	it 'should be able to calculate a grand_total' do
	end

end