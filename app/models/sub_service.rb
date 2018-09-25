class SubService < ApplicationRecord
  belongs_to :service
  has_attached_file :image, default_url: 'https://placeimg.com/480/440/any'

  validates_attachment_content_type :image, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  def self.generate_sub_services(number = 10)
    number.times do
        description_vn =  Faker::Hobbit.quote
        description_en = description_vn
        SubService.create!(
        description_vn: description_vn,
        title_vn: Faker::Cat.breed,
        price: (rand(1..100)*100000).to_s + " VND",
        service: Service.random_service

      )
    end
  end
end
