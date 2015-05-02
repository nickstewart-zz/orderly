require 'spec_helper'

describe "Viewing the list of orders" do

  it "shows the orders" do
    
    order1 = Order.create(customer: "Acme1",
                          model_number: "XYZ22",
                          description: "New New Thing",
                          sales_person: "Joe",
                          total: 678.00,
                          delivery_due_on: "2015-05-2")
                          
    order2 = Order.create(customer: "Acme2",
                          model_number: "MKU23",
                          description: "Another Thing",
                          sales_person: "Tina",
                          total: 821.00,
                          delivery_due_on: "2015-05-2")
                          
    order3 = Order.create(customer: "Acme3",
                          model_number: "ADS99",
                          description: "Yet Another Thing",
                          sales_person: "Jill",
                          total: 907.00,
                          delivery_due_on: "2015-05-2")
                          
    visit orders_url

    expect(page).to have_text("3 Sales Orders")
    
    expect(page).to have_text(order1.customer)
    expect(page).to have_text(order1.model_number)
    expect(page).to have_text(order1.description)
    expect(page).to have_text(order1.sales_person)
    expect(page).to have_text(order1.total)
    expect(page).to have_text(order1.delivery_due_on)
    
    expect(page).to have_text(order2.customer)
    expect(page).to have_text(order2.model_number)
    expect(page).to have_text(order2.description)
    expect(page).to have_text(order2.sales_person)
    expect(page).to have_text(order2.total)
    expect(page).to have_text(order2.delivery_due_on)
    
    expect(page).to have_text(order3.customer)
    expect(page).to have_text(order3.model_number)
    expect(page).to have_text(order3.description)
    expect(page).to have_text(order3.sales_person)
    expect(page).to have_text(order3.total)
    expect(page).to have_text(order3.delivery_due_on)
  end

end