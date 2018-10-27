class Course < ApplicationRecord
  has_many :courses
  has_attached_file :thumbnail_image, default_url: "https://res.cloudinary.com/buihdk/image/upload/v1538552369/36039337_1988343624812511_6506782411563466752_o.png"
  has_attached_file :represent_image_1, default_url: "https://res.cloudinary.com/buihdk/image/upload/v1538552379/shutterstock_1029700675.png"
  has_attached_file :represent_image_2, default_url: "https://res.cloudinary.com/buihdk/image/upload/v1538552384/4.png"
  has_attached_file :represent_image_3, default_url: "https://res.cloudinary.com/buihdk/image/upload/v1538552385/training.png"

  validates_attachment_content_type :thumbnail_image, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :represent_image_1, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :represent_image_2, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :represent_image_3, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]

end
