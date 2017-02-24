class ChangeStatusColumnToStringInShoppingCart < ActiveRecord::Migration[5.0]
  def change
    change_column :shopping_carts, :status, :string
  end
end
