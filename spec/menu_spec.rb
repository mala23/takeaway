require 'menu'

describe Menu do

	let(:menu) { Menu.new }
	let(:dish) { double :dish}

	it "should have an array of dishes" do
		expect(menu.dishes).to eq([])
	end

	it "should be able to add new dishes" do
		menu.add_dish(dish)
		expect(menu).to have_dishes
	end

end