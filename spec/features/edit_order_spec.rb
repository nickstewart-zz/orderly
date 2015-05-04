describe "Editing an order" do
  
  it "updates the order and shows the order's updated details" do
    order = Order.create(order_attributes)
    
    visit order_url(order)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_order_path(order))
        
    expect(find_field('Customer').value).to eq(order.customer)
  end
  
end
  