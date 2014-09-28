require 'lineitem'

describe LineItem do

	let(:dish) { double :dish, :class => :dish, :price => 1.50 }
	let(:line_item) { LineItem.new(dish) }
	
	context "(on initialization)" do

		it "should have a dish" do
			expect(line_item.dish.class).to eq(:dish)
		end

		it "should have a default quantity of 1" do
			expect(line_item.quantity).to eq(1)
		end

	end

	it "should be able to calculate it's total" do
		allow(dish).to receive(:price).and_return(1.50)
		burger = LineItem.new(dish, 3)
		expect(burger.total).to eq(4.50)
	end

end