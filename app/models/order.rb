class Order < ActiveRecord::Base
  has_many :product
    
  def delivery_due?
    delivery_due_on.blank? || delivery_due_on < Date.today
  end
end
