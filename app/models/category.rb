class Category < ApplicationRecord
  has_many :products

  def self.random_category
    Category.offset(rand Category.count).first
  end
end
