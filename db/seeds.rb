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
