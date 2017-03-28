class AddColumnEmailToLinks < ActiveRecord::Migration[5.0]
  def change
    add_column :links, :email, :string
  end
end
