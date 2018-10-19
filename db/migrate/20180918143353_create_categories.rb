class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name_vn
      t.string :name_en
      t.text :description_vn
      t.text :description_en

      t.timestamps
    end
  end
end
