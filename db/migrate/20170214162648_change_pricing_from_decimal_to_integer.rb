class ChangePricingFromDecimalToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :pricing, :integer 
  end
end
