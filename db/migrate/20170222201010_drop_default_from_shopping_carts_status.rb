class DropDefaultFromShoppingCartsStatus < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:my_payments, :shopping_cart_id , nil)
  end
end
