require 'twilio-ruby' 

class Confirmation

	def initialize
		account_sid = 'AC716374c94644e2e3ad58d64f402c6e94' 
		auth_token = '2c80700d6bf8e44c60fe307ab152aff5' 
		@client = Twilio::REST::Client.new account_sid, auth_token 
	 
		@client.account.messages.create({
			:from => '+441202562987', 
			:to => '+447463250080', 
			:body => 'Thank you! Your order was placed successfully and will be delivered before #{strTime}',  
		})

		def new_body
			t = Time.now + 3600 # 1 hour in the future (unit is seconds)
		 	t.strftime('%k:%M')
		end
	end
end

# it 'confirm the delivery time of one hour from now' do
#         one_hour_from_now = (Time.now + 60 * 60).strftime("%H:%M")
#         expect(takeaway).to receive(:send_text) do |message|
#         expect(message).to include one_hour_from_now
# end

# def send_message
# 	message = new_message
# 	@twilio_client.account.sms.messages.create(
# 		from: '+441985250053',
# 		to: 	'+447917322442',
# 		body: message
# 	)
# end

# def new_message
# 	t = Time.now + 1*60*60 # 1 hour in the future (units are seconds)
# 	t.strftime("Thank you! Your order was placed successfully and will be delivered before %k:%M")
# end