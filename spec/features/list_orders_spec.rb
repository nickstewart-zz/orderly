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
    expect(page).to have_text(order1.total)
    expect(page).to have_text(product1.code)
    expect(page).to have_text(product1.group)
    expect(page).to have_text(product1.options_standard)
    expect(page).to have_text(product1.options_additional)
    expect(page).to have_text(product2.code)
    expect(page).to have_text(product2.group)
    expect(page).to have_text(product2.options_standard)
    expect(page).to have_text(product2.options_additional)

  end

end