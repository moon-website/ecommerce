class Product < ApplicationRecord
  belongs_to :category
  has_attached_file :image

  validates_attachment_content_type :image, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
end
