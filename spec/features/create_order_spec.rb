describe "Creating a new order" do
  it "saves the order and shows the new order's details" do
    visit orders_url

    click_link 'Add New Order'

    expect(current_path).to eq(new_order_path)

    fill_in "Customer", with: "New Order Customer"
    fill_in "Description", with: "New new thing"
    fill_in "Model", with: "HYO214"
    fill_in "Total", with: 6572
    # select (Time.now.year - 1).to_s, :from => "delivery_due_on"

    # If you're taking advantage of the HTML 5 date field in Chrome,
    # you'll need to use 'fill_in' rather than 'select'
    # fill_in "Released on", with: (Time.now.year - 1).to_s

    click_button 'Create Order'

    expect(current_path).to eq(order_path(Order.last))

    expect(page).to have_text('New Order Customer')
  end
end