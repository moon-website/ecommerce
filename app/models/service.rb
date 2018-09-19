class Service < ApplicationRecord
  has_many :sub_services
  has_attached_file :image
  has_attached_file :thumbnail_image
  has_attached_file :represent_image_1
  has_attached_file :represent_image_2
  has_attached_file :represent_image_3

  validates_attachment_content_type :thumbnail_image, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :represent_image_1, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :represent_image_2, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :represent_image_3, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]

  def self.random_service
    Service.offset(rand Service.count).first
  end
end
