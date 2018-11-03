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

  def get_description(lan='vn')
    des = lan=='vn' ? description_vn : description_en
    return description_vn if des==""
    des
  end

  def get_schedule(lan='vn')
    schedule= lan=='vn' ? schedule_vn : schedule_en
    return schedule_vn if schedule==""
    schedule
  end

  def get_price(lan='vn')
    pri= lan=='vn' ? price : price_en
    return price if pri==""
    pri
  end

  def get_name(lan='vn')
    name= lan=='vn' ? name_vn : name_en
    return name_vn if name==""
    name
  end

  def get_summary(lan='vn')
    summary= lan=='vn' ? summary_vn : summary_en
    return summary_vn if summary==""
    summary
  end

  def get_extra_description(lan='vn')
    extra_des= lan=='vn' ? extra_description_vn : extra_description_en
    return extra_description_vn if extra_des==""
    extra_des
  end
end
