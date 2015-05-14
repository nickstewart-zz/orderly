class Order < ActiveRecord::Base
  has_many :products, dependent: :destroy
  accepts_nested_attributes_for :products

  validates :customer_company, presence: true
  validates :customer_name, presence: true 
    
  def delivery_due?
    delivery_due_on.blank? || delivery_due_on < Date.today
  end

  def total
    products.sum(:price)
  end
end
