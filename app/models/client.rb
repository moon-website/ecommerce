class Client < ApplicationRecord
  belongs_to :course
  has_attached_file :image, default_url: "https://placeimg.com/48/48/any"
  has_attached_file :creature, default_url: "https://placeimg.com/358/358/any"

  validates_attachment_content_type :image, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :creature, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]

  def self.generate_clients(number = 15)
    Course.all.each do |course|
      number.times do
          name =  Faker::FunnyName.name
          Client.create!(
          name: name,
          course: course
        )
      end
    end
  end
end
