require 'order'

describe Order do

	let(:order) { Order.new }
	
	context "(on initialization)" do

		it 'should have an empty array of LineItems' do
			expect(order.line_items).to eq([])
		end

	end

	it 'should be able to accept a LineItem' do
	end

	it 'should be able to calculate a grand_total' do
	end

end