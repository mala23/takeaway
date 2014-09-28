require 'dish'

describe Dish do

	context "(on initialization)" do

		let(:chips) { Dish.new("chips", 1.20) }

		it "should have a name" do
			expect(chips.name).to eq("chips")
		end

		it "should have a price" do
			expect(chips.price).to eq(1.20)
		end

	end

end