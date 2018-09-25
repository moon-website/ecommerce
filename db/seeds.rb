# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users_attributes = [
  {
    role: 'NOTIFICATION',
    email: 'notifications@moon.shop', password: 'Moon@2018', password_confirmation: 'Moon@2018'
  },
  {
    role: 'SUPER_ADMIN',
    email: 'buihdk@gmail.com', password: 'buihdk123', password_confirmation: 'buihdk123'
  },
  {
    role: 'SUPER_ADMIN',
    email: 'votanphu.2101@gmail.com', password: 'sunny123', password_confirmation: 'sunny123'
  }
]

users_attributes.each do |user_attributes|
  user = AdminUser.new(user_attributes)
  user.save! if AdminUser.where(email: user_attributes[:email]).first.blank?
end

services_attributes = [
  {
    priority: "03",
    title_vn: "Dịch vụ Nails",
    description_en: "",
    greating_vn: "Với niềm đam mê và sáng tạo trong nghệ thuật, MOON tự tin sẽ mang đến cho đôi tay của bạn vẻ đẹp hoàn hảo từ những chi tiết nhỏ cho đến các họa tiết sắc sảo được thiết kế độc đáo trên những chiếc móng nhỏ xinh. Với hàng ngàn mẫu móng đa dạng, đặc sắc, luôn cập nhật xu hướng mới nhất, Moon Nails sẽ làm cho đôi tay bạn trở nên ấn tượng, lộng lẫy nhưng không kém phần kiêu sa trong những buổi dạ tiệc hoặc cực kì trẻ trung khi dạo phố cuối tuần cùng bạn bè.",
    description_vn: Faker::Hobbit.quote,
    image:  open('https://placeimg.com/350/350/animals'),
    represent_image_1: open('https://placeimg.com/800/560/animals'),
    represent_image_2: open('https://placeimg.com/250/250/animals'),
    represent_image_3: open('https://placeimg.com/350/350/animals')
  },
  {
    priority: "01",
    title_vn: "Moon Eye Brown",
    description_en: "",
    greating_vn: "<li>Khi bạn gặp vấn đề với lông mày của mình, chọn sai nơi làm cho mình.</li> <li>Bạn đã chỉnh sửa nhưng chưa vừa ý</li> <li>Bạn muốn thay đổi đang cho hợp với gương mặt theo tỷ lệ vàng</li> <li>Đừng lo lắng hãy đến với Moon Eyebrows , Nghi Nguyen và Team Moon sẽ giúp bạn chỉnh sửa cho bạn, giúp bạn có 1 cặp lông</li> <li>Chuyên gia chỉnh sửa lông mày Nghi Nguyen cùng Team Moon hoan nghênh chào đón.</li>",
    description_vn:"",
    image:  open('https://placeimg.com/350/350/animals'),
    represent_image_1: open('https://placeimg.com/350/350/animals'),
    represent_image_2: open('https://placeimg.com/450/450/animals'),
    represent_image_3: open('https://placeimg.com/350/350/animals')
  },

  {
    priority: "02",
    title_vn: "Moon Eyelashes",
    description_en: " <li>Khi bạn gặp vấn đề với lông mày của mình, chọn sai nơi làm cho mình. Bạn đã chỉnh sửa nhưng chưa vừa ý</li>
    <li>Bạn muốn thay đổi đang cho hợp với gương mặt theo tỷ lệ vàng</li>
    <li>Đừng lo lắng hãy đến với Moon Eyebrows, Nghi Nguyen và Team Moon sẽ giúp bạn chỉnh sửa cho bạn, giúp bạn có 1 cặp</li>",
    greating_vn: "<li>Khi bạn gặp vấn đề với lông mày của mình, chọn sai nơi làm cho mình. Bạn đã chỉnh sửa nhưng chưa vừa ý</li> <li>Bạn muốn thay đổi đang cho hợp với gương mặt theo tỷ lệ vàng</li> <li>Đừng lo lắng hãy đến với Moon Eyebrows, Nghi Nguyen và Team Moon sẽ giúp bạn chỉnh sửa cho bạn, giúp bạn có 1 cặp</li>",
    description_vn: Faker::Hobbit.quote,
    image:  open('https://placeimg.com/350/350/animals'),
    represent_image_1: open('https://placeimg.com/420/270/animals'),
    represent_image_2: open('https://placeimg.com/330/640/animals'),
    represent_image_3: open('https://placeimg.com/240/250/animals')
  }
]
if Service.count == 0
  services_attributes.each do |service_attributes|
    service = Service.create(service_attributes)
  end
  SubService.generate_sub_services(12)
  puts "you've create 3 services and 12 sub services "
end


# Course
courses_attributes = [
  {
    name_vn: "Khóa học nối mi căn bản",
    description_en: "",
    description_vn: Faker::Hobbit.quote,
    schedule_vn: "Thời gian: Ngày 1 và ngày 15 hàng tháng",
    thumbnail_image:  open('https://placeimg.com/300/330/animals'),
    price: "8.000.000 VND"
  },
  {
    name_vn: "Khóa học nối mi nâng cao",
    description_en: "",
    description_vn: Faker::Hobbit.quote,
    schedule_vn: "Thời gian: Ngày 1 và ngày 15 hàng tháng",
    thumbnail_image:  open('https://placeimg.com/300/330/animals'),
    price: "8.000.000 VND"
  },
  {
    name_vn: "Khóa học nối mi chuyên nghiệp",
    description_en: "",
    description_vn: Faker::Hobbit.quote,
    schedule_vn: "Thời gian: Ngày 1 và ngày 15 hàng tháng",
    thumbnail_image:  open('https://placeimg.com/300/330/animals'),
    price: "15.000.000 VND"
  }
]

if Course.count == 0
  courses_attributes.each do |course_attributes|
    Course.create(course_attributes)
  end
  puts "you've create 3 courses"
end

# Categories
categories_attributes = [
  {
    name_en: "EYEBROWS",
    name_vn: "EYEBROWS",
    description_vn: Faker::Hobbit.quote,
  },
  {
    name_en: "Hair Care",
    name_vn: "Hair Care",
    description_vn: Faker::Hobbit.quote,
  },
  {
    name_en: "Skin Care",
    name_vn: "Skin Care",
    description_vn: Faker::Hobbit.quote,
  }
]

if Category.count == 0
  categories_attributes.each do |category_attributes|
    Category.create(category_attributes)
  end

  Product.generate_products(12)
  puts "you've create 3 categories and 12 products"
end

