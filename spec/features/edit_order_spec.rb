describe "Editing an order" do
  
  it "updates the order and shows the order's updated details" do
    order = Order.create(order_attributes)
    
    visit order_url(movie)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_order_path(movie))
        
    expect(find_field('Title').value).to eq(order.title)
  end
  
end
  