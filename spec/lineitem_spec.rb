require 'lineitem'

describe LineItem do
	
	context "(on initialization)" do

		let(:lineitem) { LineItem.new("burger", 3) }

		it "should have a dish" do
			expect(lineitem.dish).to eq("burger")
		end

		it "should have a quantity" do
			expect(lineitem.quantity).to eq(3)
		end

	end

end