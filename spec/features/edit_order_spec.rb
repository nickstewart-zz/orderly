describe "Editing an order" do
  
  it "updates the order and shows the order's updated details" do
    order = Order.create(order_attributes)
    
    visit order_url(order)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_order_path(order))
        
    expect(find_field('Customer company').value).to eq(order.customer_company)
    expect(find_field('Customer name').value).to eq(order.customer_name)
        
    fill_in 'Customer company', with: "Updated Order Customer"

    click_button 'Update Order'

    expect(current_path).to eq(order_path(order))
    expect(page).to have_text('Order successfully updated!')
    expect(page).to have_text('Updated Order Customer')
  end
end
  