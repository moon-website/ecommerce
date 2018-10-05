class AddReferenceToClient < ActiveRecord::Migration[5.2]
  def change
    add_reference :clients, :course, index: true
  end
end
