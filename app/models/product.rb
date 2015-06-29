class Product < ActiveRecord::Base
  belongs_to :order
  belongs_to :user

  validates :code, presence: true
  validates :options_standard, presence: true
  validates :price, presence: true
end
