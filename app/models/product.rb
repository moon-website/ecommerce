class Product < ApplicationRecord
  belongs_to :category
  has_attached_file :image, default_url: "https://res.cloudinary.com/buihdk/image/upload/v1538552356/9.png"

  validates_attachment_content_type :image, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]

  def self.generate_products(number = 10)
    number.times do
        description_vn =  Faker::Hobbit.quote
        description_en = description_vn
        Product.create!(
        description_vn: description_vn,
        name_vn: Faker::Cat.breed,
        price: (rand(1..100)*10000).to_s + " VND",
        category: Category.random_category
      )
    end
  end

  def get_description(lan='vn')
    des = lan=='vn' ? description_vn : description_en
    return description_vn if des==""
    des
  end

  def get_name(lan='vn')
    name= lan=='vn' ? name_vn : name_en
    return name_vn if name==""
    name
  end
end
