require 'confirmation'

describe Confirmation do

	it 'should be initialized with a client' do
		conf = Confirmation.new
		expect(conf.client).to be nil
	end

	# it 'should receive a phone number when sending a confirmation' do
	# 	conf = Confirmation.new
	# 	expect(conf.send(nil)).to be nil
	# end

end