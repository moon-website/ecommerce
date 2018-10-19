class AddReferenceToCategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :category, index: true
  end
end
