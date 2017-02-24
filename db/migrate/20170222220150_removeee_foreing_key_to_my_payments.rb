class RemoveeeForeingKeyToMyPayments < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :my_payments, column: :shopping_cart_id
  end
end
