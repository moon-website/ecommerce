class Category < ApplicationRecord
  has_many :products

  def self.random_category
    Category.offset(rand Category.count).first
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
