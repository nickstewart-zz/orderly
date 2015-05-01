describe "Viewing and individual order" do
  
  it "shows the order's details" do
    
    order = Order.create(order_attributes)
                          
    visit order_url(order)
    
    expect(page).to have_text(order.customer)
    expect(page).to have_text(order.model_number)
    expect(page).to have_text(order.description)
    expect(page).to have_text(order.sales_person)
    expect(page).to have_text(order.total)
    expect(page).to have_text(order.terms)
  end
  
end

