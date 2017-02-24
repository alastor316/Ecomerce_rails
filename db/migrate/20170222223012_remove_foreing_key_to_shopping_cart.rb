class RemoveForeingKeyToShoppingCart < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :in_shopping_carts, column: :shopping_cart_id
  end
end
