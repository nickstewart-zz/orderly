describe "A Customer" do
  it 'requires a name'  do
    customer = Customer.new(name: "")

    customer.valid?

    expect(customer.errors[:name].any?).to eq(true)
  end

  it 'is valid with example example attributes' do
  	customer = Customer.create!(customer_attributes)

  	expect(customer.valid?).to eq(true)
  end

  it "has products" do
    customer = Customer.create!(customer_attributes)
    order1 = Order.new(order_attributes(customer_company: "Wunjo"))
    order2 = Order.new(order_attributes(customer_company: "Mattchets"))

    product1 = order1.products.new(product_attributes(code: "Pierre Bensusan"))
    product1.customer = customer
    product1.save!

    product2 = order2.products.new(product_attributes(code: "Thomas Leeb"))
    product2.customer = customer
    product2.save!

    expect(customer.products).to include(product1)
    expect(customer.products).to include(product2)
  end
end
