require 'rails_helper'

RSpec.describe "credit_cards/edit", type: :view do
  before(:each) do
    @credit_card = assign(:credit_card, CreditCard.create!(
      :digits => "MyString",
      :month => 1,
      :year => 1
    ))
  end

  it "renders the edit credit_card form" do
    render

    assert_select "form[action=?][method=?]", credit_card_path(@credit_card), "post" do

      assert_select "input[name=?]", "credit_card[digits]"

      assert_select "input[name=?]", "credit_card[month]"

      assert_select "input[name=?]", "credit_card[year]"
    end
  end
end
