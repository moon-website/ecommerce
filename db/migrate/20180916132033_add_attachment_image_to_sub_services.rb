class AddAttachmentImageToSubServices < ActiveRecord::Migration[5.1]
  def self.up
    change_table :sub_services do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :sub_services, :image
  end
end
