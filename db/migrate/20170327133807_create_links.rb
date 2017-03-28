class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.references :product, foreign_key: true
      t.datetime :expiration_date
      t.integer :downloads
      t.integer :downloads_limit
      t.string :custom_id

      t.timestamps
    end
  end
end
