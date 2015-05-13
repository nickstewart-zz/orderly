describe "Creating a new order" do
  it "saves the order and shows the new order's details" do
    visit orders_url

    click_link 'Add New Order'

    expect(current_path).to eq(new_order_path)

    # Fill in Order detials
    fill_in "Customer company", with: "Guitar Sofa"
    fill_in "Customer name", with: "Sockgoo Choi"
    fill_in "Total", with: 6572
    
    # Fill in Product details
    fill_in "Code", with: "F-38"
    fill_in "Group", with: "38 Series"
    fill_in "Options standard", with: "Size: O, Indian Rosewood/Sitka Spruce"
    fill_in "Options additional", with: "None Specified"
    fill_in "Price", with: 6572

    click_button 'Create Order'

    expect(current_path).to eq(order_path(Order.last))

    expect(page).to have_text('Guitar Sofa')
    expect(page).to have_text('Sockgoo Choi')
    expect(page).to have_text('F-38')
    expect(page).to have_text('38 Series')
  end
end
