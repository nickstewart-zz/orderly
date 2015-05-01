class Order < ActiveRecord::Base
  def delivery_due?
    delivery_due_on.blank? || delivery_due_on < Date.today
  end
end
