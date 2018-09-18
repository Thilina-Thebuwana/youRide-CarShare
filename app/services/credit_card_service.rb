class CreditCardService
Stripe.api_key = "sk_test_an57VrZhcK4wp3bUdSyX0bIP"
  def initialize(user_id, card)
    @user = User.find(user_id)
    @card = card
  end
 
  def create_credit_card
    customer = Stripe::Customer.retrieve(@user.customer_id )
    customer.sources.create({source: generate_token}).id
  end
 
  def generate_token
    Stripe::Token.create(
      card: {
        number: @card[:number],
        exp_month: @card[:month],
        exp_year: @card[:year],
        cvc: @card[:cvc]
      }
    ).id
  end
end