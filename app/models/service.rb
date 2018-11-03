class Service < ApplicationRecord
  has_many :sub_services
  has_attached_file :image,  default_url: 'https://placeimg.com/350/350/animals'
  has_attached_file :thumbnail_image, default_url: "https://res.cloudinary.com/buihdk/image/upload/v1538552369/36039337_1988343624812511_6506782411563466752_o.png"
  has_attached_file :represent_image_1, default_url: "https://res.cloudinary.com/buihdk/image/upload/v1538552379/shutterstock_1029700675.png"
  has_attached_file :represent_image_2, default_url: "https://res.cloudinary.com/buihdk/image/upload/v1538552384/4.png"
  has_attached_file :represent_image_3, default_url: "https://res.cloudinary.com/buihdk/image/upload/v1538552385/5.png"

  validates_attachment_content_type :thumbnail_image, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :represent_image_1, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :represent_image_2, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :represent_image_3, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]

  def self.random_service
    Service.offset(rand Service.count).first
  end

  def self.get_previous_service(priority)
    pre_priority = "0"+ (priority.to_i - 1).to_s
    Service.find_by_priority(pre_priority)
  end

  def self.get_next_service(priority)
    next_priority = "0"+ (priority.to_i + 1).to_s
    Service.find_by_priority(next_priority)
  end

  def get_description(lan='vn')
    des = lan=='vn' ? description_vn : description_en
    return description_vn if des==""
    des
  end

  def get_greeting(lan='vn')
    greeting= lan=='vn' ? greeting_vn : greeting_en
    return greeting_vn if greeting==""
    greeting
  end

  def get_title(lan='vn')
    title= lan=='vn' ? title_vn : title_en
    return title_vn if title==""
    title
  end
end
