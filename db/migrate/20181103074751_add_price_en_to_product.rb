class AddPriceEnToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :price_en, :string
  end
end
