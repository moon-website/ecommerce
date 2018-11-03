class AddPriceEnToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :price_en, :string
  end
end
