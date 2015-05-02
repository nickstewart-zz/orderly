describe 'Navigting Orders' do
  
  it 'allows navigation from the order detail page to the listings page' do
    order = Order.create(order_attributes)
  
    visit order_url(order)
    
    click_link "All Orders"
    
    expect(current_path).to eq(orders_path)
                          
  end
  
  it 'allows navigation from the listing page to the order detail page' do
    order = Order.create(order_attributes)
  
    visit orders_url
    
    click_link order.id
    
    expect(current_path).to eq(order_path(order))
                          
  end
end