describe "Viewing an individual order" do
  
  it "shows the order's details" do
    
    order = Order.create(order_attributes)
                          
    visit order_url(order)
    
    expect(page).to have_text(order.customer_company)
    expect(page).to have_text(order.customer_name)
    expect(page).to have_text(order.created_at)
    expect(page).to have_text(order.total)
  end
end

