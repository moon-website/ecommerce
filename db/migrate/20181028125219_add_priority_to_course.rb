class AddPriorityToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :priority, :string
  end
end
