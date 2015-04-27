describe "Viewing and individual order" do
  
  it "shows the order's details" do
    
    order1 = Order.create(customer: "Acme1",
                          model_number: "XYZ22",
                          description: "New New Thing",
                          sales_person: "Jill",
                          total: 678.00,
                          terms: "30 Days")
                          
    visit "http://example.com/movies/1"
    
    expect(page).to have_text(order1.customer)
    expect(page).to have_text(order1.model_number)
    expect(page).to have_text(order1.description)
    expect(page).to have_text(order1.sales_person)
    expect(page).to have_text(order1.total)
    expect(page).to have_text(order1.terms)
  end
end

