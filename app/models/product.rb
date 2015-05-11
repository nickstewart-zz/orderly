class Product < ActiveRecord::Base
  belongs_to :order
  
  validates :code, presence: true
  validates :options_standard, presence: true
  validates :price, presence: true
end
