module OrdersHelper
  def format_delivery_due_in(order)
    if order.delivery_due?
      content_tag(:strong, 'Delivery now due!')
    else
      "Delivery due in " + distance_of_time_in_words(Date.today, order.delivery_due_on)
    end
  end
end
