class TrainingClass < ApplicationRecord
  has_many :clients
  belongs_to :course
  has_attached_file :image, default_url: "https://placeimg.com/330/375/any"

  validates_attachment_content_type :image, :content_type => ["text/html", "image/svg+xml", "image/jpg", "image/jpeg", "image/png", "image/gif"]

  def self.generate_classes(number = 3)
    Course.all.each do |course|
      TrainingClass.create!(
        name: "Khoa thang 6/2018",
        course: course
      )

      TrainingClass.create!(
        name: "Khoa thang 7/2018",
        course: course
      )

      TrainingClass.create!(
        name: "Khoa thang 8/2018",
        course: course
      )

    end
  end
end
