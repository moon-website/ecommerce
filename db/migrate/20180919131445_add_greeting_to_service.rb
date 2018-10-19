class AddGreetingToService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :greeting_vn, :text
    add_column :services, :greeting_en, :text
  end
end
