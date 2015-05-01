describe "Viewing an individual order" do
  
  it "shows the order's details" do
    
    order = Order.create(order_attributes)
                          
    visit order_url(order)
    
    expect(page).to have_text(order.customer)
    expect(page).to have_text(order.model_number)
    expect(page).to have_text(order.description)
    expect(page).to have_text(order.sales_person)
    expect(page).to have_text(order.total)
  end
  
  it "shows the number of days remaining if the delivery date is in the future" do
     order = Order.create(order_attributes(delivery_due_on: 1.day.from_now))
     
     visit order_url(order)
     
     expect(page).to have_text("Delivery due in 1 day")
  end
  
  it "shows 'Delivery now due!' if due date is in the past" do
  order = Order.create(order_attributes(delivery_due_on: 2.days.ago))

  visit order_url(order)

  expect(page).to have_text("Delivery now due!")
  end
end

