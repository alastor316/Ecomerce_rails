class AddColumnShoppingCartIdToMyPayments < ActiveRecord::Migration[5.0]
  def change
    add_reference :my_payments, :shopping_cart, foreign_key: true
  end
end
