require 'spec_helper'

describe "Viewing the list of orders" do

  it "shows the orders" do
    
    order1 = Order.create(order_attributes)
    product1 = order1.products.create(product_attributes)
    product2 = order1.products.create(product_attributes(code: "O-32", group: "Original Series"))
                          
    order2 = Order.create(order_attributes(customer_company: "The Fellowship of Acoustic"))
    product3 = order2.products.create(product_attributes)
    product4 = order2.products.create(product_attributes(code: "O-25c",
                                                         group: "Original Series",
                                                         options_standard: "Size: O, Back and Sides: Indian Rosewood, Sound Board: Sitka Spruce", 
                                                         options_additional: "Cutaway: Yes"))
                          
    order3 = Order.create(order_attributes(customer_company: "Guitar Guitar"))
    product5 = order3.products.create(product_attributes)
    product6 = order3.products.create(product_attributes(code: "O-32", group: "Original Series"))
                          
    visit orders_url

    expect(page).to have_text("3 Sales Orders")
    
    expect(page).to have_text(order1.customer_company)
    expect(page).to have_text(order1.customer_name)
    expect(page).to have_text("2 Products")
    expect(page).to have_text(order2.customer_company)
    expect(page).to have_text(order2.customer_name)
    expect(page).to have_text("2 Products")

    expect(page).to have_text(order3.customer_company)
    expect(page).to have_text(order3.customer_name)
    expect(page).to have_text("2 Products")
  end

end