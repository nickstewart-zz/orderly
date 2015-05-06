describe "Editing an order" do
  
  it "updates the order and shows the order's updated details" do
    order = Order.create(order_attributes)
    
    visit order_url(order)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_order_path(order))
        
    expect(find_field('Customer').value).to eq(order.customer)
    expect(find_field('Model number').value).to eq(order.model_number)
    expect(find_field('Description').value).to eq(order.description)
    # expect(find_field('Delivery due on').value).to eq(order.delivery_due_on)
    expect(find_field('Sales person').value).to eq(order.sales_person)
    
    fill_in 'Customer', with: "Updated Order Customer"

    click_button 'Update Order'

    expect(current_path).to eq(order_path(order))
    expect(page).to have_text('Order successfully updated!')
    expect(page).to have_text('Updated Order Customer')
  end
end
  