class AddAttachmentsToServices < ActiveRecord::Migration[5.1]
  def self.up
    change_table :services do |t|
      t.attachment :thumbnail_image
      t.attachment :represent_image_1
      t.attachment :represent_image_2
      t.attachment :represent_image_3
    end
  end

  def self.down
    remove_attachment :services, :thumbnail_image
    remove_attachment :services, :represent_image_1
    remove_attachment :services, :represent_image_2
    remove_attachment :services, :represent_image_3
  end

end
