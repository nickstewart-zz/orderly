class Product < ActiveRecord::Base
  belongs_to :order
  
  validates :code, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
