Rails.configuration.stripe = {
  publishable_key: Rails.application.secrets['pk_test_XyiawlBx1SPNmdx6ZS52bAPK'],
  secret_key:  	Rails.application.secrets['sk_test_an57VrZhcK4wp3bUdSyX0bIP']
}
 
Stripe.api_key = Rails.configuration.stripe[:secret_key]
 
StripeEvent.configure do |events|
  events.subscribe 'charge.succeeded' do |event|
      
     
    # Here you can send notification to user,
    # change transaction state or whatever you want.
  end
end