class AddAttachmentThumbnailImageToCourses < ActiveRecord::Migration[5.1]
  def self.up
    change_table :courses do |t|
      t.attachment :thumbnail_image
    end
  end

  def self.down
    remove_attachment :courses, :thumbnail_image
  end
end
