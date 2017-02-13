class CreateInShoppingCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :in_shopping_carts do |t|
      t.references :product, index: true, foreign_key: true
      t.references :shopping_cart, index: true, foreign_key: true

      t.timestamps
    end
  end
end
