class AddExtraDescriptionToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :extra_description_vn, :text
    add_column :courses, :extra_description_en, :text
  end
end
