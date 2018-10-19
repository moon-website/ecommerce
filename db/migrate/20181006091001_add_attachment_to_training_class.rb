class AddAttachmentToTrainingClass < ActiveRecord::Migration[5.2]
  def self.up
    change_table :training_classes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :training_classes, :image
  end
end
