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
    greeting_vn: "Với niềm đam mê và sáng tạo trong nghệ thuật, MOON tự tin sẽ mang đến cho đôi tay của bạn vẻ đẹp hoàn hảo từ những chi tiết nhỏ cho đến các họa tiết sắc sảo được thiết kế độc đáo trên những chiếc móng nhỏ xinh. Với hàng ngàn mẫu móng đa dạng, đặc sắc, luôn cập nhật xu hướng mới nhất, Moon Nails sẽ làm cho đôi tay bạn trở nên ấn tượng, lộng lẫy nhưng không kém phần kiêu sa trong những buổi dạ tiệc hoặc cực kì trẻ trung khi dạo phố cuối tuần cùng bạn bè.",
    description_vn: Faker::Hobbit.quote
  },
  {
    priority: "01",
    title_vn: "Moon Eye Brown",
    description_en: "",
    greeting_vn: "<li>Khi bạn gặp vấn đề với lông mày của mình, chọn sai nơi làm cho mình.</li> <li>Bạn đã chỉnh sửa nhưng chưa vừa ý</li> <li>Bạn muốn thay đổi đang cho hợp với gương mặt theo tỷ lệ vàng</li> <li>Đừng lo lắng hãy đến với Moon Eyebrows , Nghi Nguyen và Team Moon sẽ giúp bạn chỉnh sửa cho bạn, giúp bạn có 1 cặp lông</li> <li>Chuyên gia chỉnh sửa lông mày Nghi Nguyen cùng Team Moon hoan nghênh chào đón.</li>",
    description_vn:""
  },

  {
    priority: "02",
    title_vn: "Moon Eyelashes",
    description_en: " <li>Khi bạn gặp vấn đề với lông mày của mình, chọn sai nơi làm cho mình. Bạn đã chỉnh sửa nhưng chưa vừa ý</li>
    <li>Bạn muốn thay đổi đang cho hợp với gương mặt theo tỷ lệ vàng</li>
    <li>Đừng lo lắng hãy đến với Moon Eyebrows, Nghi Nguyen và Team Moon sẽ giúp bạn chỉnh sửa cho bạn, giúp bạn có 1 cặp</li>",
    greeting_vn: "<li>Khi bạn gặp vấn đề với lông mày của mình, chọn sai nơi làm cho mình. Bạn đã chỉnh sửa nhưng chưa vừa ý</li> <li>Bạn muốn thay đổi đang cho hợp với gương mặt theo tỷ lệ vàng</li> <li>Đừng lo lắng hãy đến với Moon Eyebrows, Nghi Nguyen và Team Moon sẽ giúp bạn chỉnh sửa cho bạn, giúp bạn có 1 cặp</li>",
    description_vn: Faker::Hobbit.quote
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
    description_vn: " <p>-	Khóa học nối mi One By One và mi Thiên Thần </p>
    <p>
      -	Dụng cụ học tập có thể mua ở MoonEyelash ( với ưu đãi giảm 50%) hoặc học viên tự chuẩn bị
    </p>",
    description_en: Faker::Hobbit.quote,
    extra_description_vn: "<p class='item-extra'>+ Khoá học nối mi cơ bản</p>
    <p class='item-extra'>+ Khoá học nối mi nâng cao</p>
    <p class='item-extra'>+ Khoá phun thẩm mỹ</p>
    <p class='item-extra'>+ Quyền lợi học viên</p>
    <p class='item-extra'>+ Nhận xét từ học viên</p>
    <br/><br/><br/><br/>
    <p class='item-extra'>+ Khoá Điêu khắc lông mày</p>
    <p class='item-extra'>+ Khoá lông mày chuyên nghiệp</p>
    <p class='item-extra'>+ Các lợi ích khi đăng ký</p>
    <p class='item-extra'>+ Tác phẩm và nhận xét</p>",
    schedule_vn: "Thời gian: Ngày 1 và ngày 15 hàng tháng",
    price: "8.000.000 VND"
  },
  {
    name_vn: "Khóa học nối mi nâng cao",
    description_vn: "<p>-	Khóa học nối mi One By One và mi Thiên Thần </p>
    <p>
      -	Dụng cụ học tập có thể mua ở MoonEyelash ( với ưu đãi giảm 50%) hoặc học viên tự chuẩn bị
    </p>",
    extra_description_vn: " <p class='item-extra'>+ Khoá Điêu khắc lông mày</p>
    <p class='item-extra'>+ Khoá lông mày chuyên nghiệp</p>
    <p class='item-extra'>+ Các lợi ích khi đăng ký</p>
    <p class='item-extra'>+ Tác phẩm và nhận xét</p>",
    description_en: Faker::Hobbit.quote,
    schedule_vn: "Thời gian: Ngày 1 và ngày 15 hàng tháng",
    price: "8.000.000 VND"
  },
  {
    name_vn: "Khóa học nối mi chuyên nghiệp",
    extra_description_vn: " <p class='item-extra'>+ Khoá Điêu khắc lông mày</p>
    <p class='item-extra'>+ Khoá lông mày chuyên nghiệp</p>
    <p class='item-extra'>+ Các lợi ích khi đăng ký</p>
    <p class='item-extra'>+ Tác phẩm và nhận xét</p>",
    description_vn:  "<p>-	Khóa học nối mi One By One và mi Thiên Thần </p>
    <p>
      -	Dụng cụ học tập có thể mua ở MoonEyelash ( với ưu đãi giảm 50%) hoặc học viên tự chuẩn bị
    </p>",
    description_en: Faker::Hobbit.quote,
    schedule_vn: "Thời gian: Ngày 1 và ngày 15 hàng tháng",
    price: "15.000.000 VND"
  }
]

if Course.count == 0
  courses_attributes.each do |course_attributes|
    Course.create(course_attributes)
  end
  Client.generate_clients
  puts "you've create 3 courses"
  puts "you've create 45 students"
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
