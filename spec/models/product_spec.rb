describe "A product" do

  it "belongs to an order" do
    order = Order.create(order_attributes)

    product = order.products.new(product_attributes)

    expect(product.order).to eq(order)
  end

  it "with example attributes is valid" do
    product = Product.new(product_attributes)

    expect(product.valid?).to eq(true)
  end

  it "requires a code" do
    product = Product.new(code: "")

    product.valid? # populates errors

    expect(product.errors[:code].any?).to eq(true)
  end

  it "requires a description" do
    product = Product.new(description: "")

    product.valid?

    expect(product.errors[:description].any?).to eq(true)
  end
  
  it "requires a price" do
    product = Product.new(price: "")

    product.valid?

    expect(product.errors[:price].any?).to eq(true)
  end

end