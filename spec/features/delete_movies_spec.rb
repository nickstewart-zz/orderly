describe "Deleting a movie" do
  it "destroys the movie and shows the movie listing without the deleted movie" do
    order = Order.create(order_attributes)

    visit order_path(order)

    click_link 'Delete'

    expect(current_path).to eq(orders_path)
    expect(page).not_to have_text(order.customer)
  end
end