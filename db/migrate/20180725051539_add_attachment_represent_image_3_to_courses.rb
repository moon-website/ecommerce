class AddAttachmentRepresentImage3ToCourses < ActiveRecord::Migration[5.1]
  def self.up
    change_table :courses do |t|
      t.attachment :represent_image_3
    end
  end

  def self.down
    remove_attachment :courses, :represent_image_3
  end
end
