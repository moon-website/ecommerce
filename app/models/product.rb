class Product < ApplicationRecord
  belongs_to :category
  has_attached_file :image

  validates_attachment_content_type :image, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]

  def self.generate_products(number = 10)
    number.times do
        description_vn =  Faker::Hobbit.quote
        description_en = description_vn
        Product.create!(
        description_vn: description_vn,
        name_vn: Faker::Cat.breed,
        price: (rand(1..100)*10000).to_s + " VND",
        category: Category.random_category,
        image: open("https://placeimg.com/300/400/any")
      )
    end
  end
end
