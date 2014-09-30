require 'confirmation'

describe Confirmation do

	let(:confirmation) { Confirmation.new }
	let(:account_sid) { 'AC716374c94644e2e3ad58d64f402c6e94' }
	let(:auth_token) { '2c80700d6bf8e44c60fe307ab152aff5' }
	let(:to) { '+447463250080' }
	let(:from) { '+441202562987' }
	let(:body) { 'my_message' }

	before do
		Twilio::REST::Client.any_instance.stub_chain(:account,:sms,:messages,:create) {nil}
	end
	
	it 'should have an account_sid'
		expect(confirmation.account_sid).to eq(account_sid)
	end

	it 'should have an auth_token'
		expect(confirmation.auth_token).to eq(auth_token)
	end

	it 'should have a receiver'
		expect(confirmation.to).to eq(to)
	end

	it 'should have a sender'
		expect(confirmation.from).to eq(from)
	end

	it 'should have a body'
		expect(confirmation.body).to eq(body)
	end

	it "should send a message when order is placed" do
		expect(confirmation).to receive(:send_message)
	end

end