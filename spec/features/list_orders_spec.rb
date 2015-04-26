require 'spec_helper'

describe "Viewing the list of orders" do

  it "shows the orders" do
    
    order1 = Order.create(order_number: 1,
                          customer: "Acme1",
                          
                          )
    visit orders_url

    expect(page).to have_text("3 Orders")
    expect(page).to have_text("Order 1")
    expect(page).to have_text("Order 2")
    expect(page).to have_text("Order 3")
    
  end

end