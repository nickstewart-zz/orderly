describe "An Order" do
  it "is due if the delivery due on date is in the past" do
    order = Order.new(delivery_due_on: 2.days.ago)
  
    expect(order.delivery_due?).to eq(true)
  end

  it "is not due if the delivery due on date is in the future" do
    order = Order.new(delivery_due_on: 2.days.from_now)
  
    expect(order.delivery_due?).to eq(false)
  end
end