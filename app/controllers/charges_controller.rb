class ChargesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_product
  
  def create
      Stripe.api_key = "sk_test_an57VrZhcK4wp3bUdSyX0bIP"
    stripe_card_id =
      if params[:credit_card].present?
        CreditCardService.new(current_user.id, card_params).create_credit_card
      else
        charge_params[:card_id]
          
      end
  
    Stripe::Charge.create(
      customer: current_user.customer_id,
      source:   stripe_card_id,
      amount:   100,
      currency: 'aud'
    )
  
    if params[:credit_card].present? && stripe_card_id
      current_user.credit_cards.create_with(card_params).find_or_create_by(stripe_id: stripe_card_id)
       redirect_to bookings_path
       flash.now[:alert] =  'Payment was successful' 
       @booking.update(paid: "true")
      
    end
    rescue Stripe::CardError => e
    flash[:error] = e.message
     respond_to do |format|
      format.html { redirect_to @booking, notice: 'Card details were incorrect or invalid' }
    end
 
  end
  
  private
  
  def card_params
    params.require(:credit_card).permit(:number, :month, :year, :cvc)
  end
  
  def charge_params
    params.require(:charge).permit(:card_id)
  end
  
  def find_product
    @booking = Booking.find(params[:booking_id])
  rescue ActiveRecord::RecordNotFound => e
    flash[:error] = 'booking not found!'
    redirect_to root_path
  end
end