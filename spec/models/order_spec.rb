describe "An Order" do
  it "is due if the delivery due on date is in the past" do
    order = Order.new(delivery_due_on: 2.days.ago)
  
    expect(order.delivery_due?).to eq(true)
  end

  it "is not due if the delivery due on date is in the future" do
    order = Order.new(delivery_due_on: 2.days.from_now)
  
    expect(order.delivery_due?).to eq(false)
  end
  
  it "has many products" do
    order = Order.new(order_attributes)

    product1 = order.products.new(product_attributes)
    product2 = order.products.new(product_attributes)
    
    expect(order.products).to include(product1)
    expect(order.products).to include(product2)
  end

  it "deletes associated products" do
    order = Order.create(order_attributes)

    order.products.create(product_attributes)

    expect {
      order.destroy
    }.to change(Product, :count).by(-1)
  end
end