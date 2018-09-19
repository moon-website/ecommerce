class AddGreetingToService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :greating_vn, :text
    add_column :services, :greating_en, :text
  end
end
