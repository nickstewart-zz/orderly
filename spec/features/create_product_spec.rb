describe "Creating a new product" do
  it "saves the product and shows the new product within the new order details" do
    order = Order.create(order_attributes(customer_company: "Bluedog"))
    product = order.products.create(product_attributes(code: "O-22"))
 
    visit order_url(order)

    expect(page).to have_text('Bluedog')
    expect(page).to have_text('O-22')

    click_link 'Add New Product'

    expect(current_path).to eq(new_order_product_path(order))

    expect(page).to have_text('Bluedog')
    expect(page).to have_text('O-22')

    fill_in "Code", with: "F-25"
    fill_in "Group", with: "Original"
    fill_in "Options_standard", with: "Size: F, Indian Rosewood/Red Cedar"
    fill_in "Options_additional", with: "None specified"
    fill_in "Price", with: "2775.00"

    click_button 'Create Product'

    expect(current_path).to eq(order_path)
  end
end

