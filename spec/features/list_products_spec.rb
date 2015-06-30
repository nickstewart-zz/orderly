require 'spec_helper'

describe "Viewing a list of products" do

  before do
    @user = User.create!(user_attributes)
    sign_in(@user)
  end

  it "shows the products for a specific order" do
    order1 = Order.create!(order_attributes(customer_company: "Guitar Guitar"))
    product1 = order1.products.create!(product_attributes(code: "P-TEST1", user: @user))
    product2 = order1.products.create!(product_attributes(code: "P-TEST2", user: @user))


    order2 = Order.create!(order_attributes(customer_company: "TFOA"))
    product3 = order2.products.create!(product_attributes(code: "P-TEST3", user: @user))

    visit order_products_url(order1)

    expect(page).to have_text(product1.code)
    expect(page).to have_text(product2.code)
    expect(page).not_to have_text(product3.code)
  end
end
