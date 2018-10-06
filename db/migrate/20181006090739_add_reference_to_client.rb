class AddReferenceToClient < ActiveRecord::Migration[5.2]
  def change
    add_reference :clients, :training_class, index: true
    add_reference :training_classes, :course, index: true
  end
end
