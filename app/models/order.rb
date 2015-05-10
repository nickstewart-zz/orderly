class Order < ActiveRecord::Base
  has_many :products, dependent: :destroy
  accepts_nested_attributes_for :products
    
  def delivery_due?
    delivery_due_on.blank? || delivery_due_on < Date.today
  end
end
