class AddColumnShoppingCartIdToMyPayments < ActiveRecord::Migration[5.0]
  def change
    add_reference :my_payments, :shopping_cart, index: true
  end
end
