require 'lineitem'

describe LineItem do
	
	context "(on initialization)" do

		let(:LineItem) { LineItem.new("burger", 3) }

		it "should have a dish" do
			expect(LineItem.dish).to eq("burger")
		end

		it "should have a quantity" do
			expect(LineItem.quantity).to eq(3)
		end

	end

end