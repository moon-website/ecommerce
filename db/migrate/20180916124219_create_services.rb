class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :title_vn
      t.string :title_en
      t.string :order
      t.text :description_vn
      t.text :description_en

      t.timestamps
    end
  end
end
