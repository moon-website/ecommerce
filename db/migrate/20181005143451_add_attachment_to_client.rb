class AddAttachmentToClient < ActiveRecord::Migration[5.2]
  def self.up
    change_table :clients do |t|
      t.attachment :image
      t.attachment :creature

    end
  end

  def self.down
    remove_attachment :clients, :image
    remove_attachment :clients, :creature
  end
end
