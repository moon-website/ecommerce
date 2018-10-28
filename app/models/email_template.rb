class EmailTemplate < ApplicationRecord
  validates :name, presence: true

  CATEGORY = [
    { name: 'Register course', value: 'REGISTER_COURSE' },
    { name: 'Order service', value: 'ORDER_SERVICE' },
    { name: 'Order product', value: 'ORDER_PRODUCT' }
  ]
  def self.get_register_course
    EmailTemplate.where(category: 'REGISTER_COURSE').first
  end

  def self.get_order_servive
    EmailTemplate.where(category: 'ORDER_SERVICE').first
  end

  def self.get_order_product
    EmailTemplate.where(category: 'ORDER_PRODUCT').first
  end
end


