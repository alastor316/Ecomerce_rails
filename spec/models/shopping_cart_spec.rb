# == Schema Information
#
# Table name: shopping_carts
#
#  id         :integer          not null, primary key
#  status     :string
#  ip         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe ShoppingCart, type: :model do
  describe "status" do
    it "can be set as prayed" do
      shopping_cart = FactoryGirl.create(:shopping_cart)
      shopping_cart.payed!
      puts shopping_cart.status
      expect(shopping_cart.status).to eq("payed").to be_truthy
  end
end

describe "#total" do
  shopping_cart = FactoryGirl.create(:shopping_cart)
  product = FactoryGirl.create(:product,5)
  end
end
