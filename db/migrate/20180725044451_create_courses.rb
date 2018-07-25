class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name_vn
      t.string :name_en
      t.string :price
      t.text :description_vn
      t.text :description_en
      t.string :schedule_vn
      t.string :schedule_en
      t.string :summary_vn
      t.string :summary_en
      t.timestamps
    end
  end
end
