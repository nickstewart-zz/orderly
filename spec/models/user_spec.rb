require 'spec_helper'

describe 'A User' do

  it 'requires a name'  do
    user = User.new(name: "")

    user.valid?

    expect(user.errors[:name].any?).to eq(true)
  end

  it 'requires an email' do
  	user = User.new(email: "")

  	user.valid?

  	expect(user.errors[:email].any?).to eq(true)
  end

  it 'accepts a properly formatted email addresses' do
    emails = %w[user@example.com first.last@example.com]
    emails.each do |email|
     user = User.new(email: email)
     user.valid?
     expect(user.errors[:email].any?).to eq(false)
    end
  end

  it 'does not accept improperly formatted email addresses' do
    emails = %w[@ user@ @example.com]
    emails.each do |email|
     user = User.new(email: email)
     user.valid?
     expect(user.errors[:email].any?).to eq(true)
    end
  end

  it 'requires a unique and case insensitive email addresses' do
    user1 = User.create!(user_attributes)

    user2 = User.new(email: user1.email.upcase)

    user2.valid?

    expect(user2.errors[:email].first).to eq("has already been taken")
  end

  it 'is valid with example example attributes' do
  	user = User.create!(user_attributes)

  	expect(user.valid?).to eq(true)
  end

  it 'requires a password' do
  	user = User.new(password: "")

  	user.valid?

  	expect(user.errors[:password].any?).to eq(true)
  end

  it 'requires a password confirmaiton when password is present' do
  	user = User.new(password: "secret", password_confirmation: "")

  	user.valid?

  	expect(user.errors[:password_confirmation].any?).to eq(true)
  end

  it 'requires the password to match the password_confirmation' do
    user = User.new(password: "secret", password_confirmation: "nomatch")

    user.valid?

    expect(user.errors[:password_confirmation].first).to eq("doesn't match Password")
  end

  it 'requires a matching password and password confirmation when creating' do
  	user = User.create!(user_attributes(password: "secret", password_confirmation: "secret"))

  	expect(user.valid?).to eq(true)
  end

  it 'does not require a password when updating' do
    user = User.create!(user_attributes)

    user.password = ""

    expect(user.valid?).to eq(true)
  end

  it 'automatically encrypts the password into the password digest attribute' do
    user = User.new(password: "secret")

    expect(user.password_digest.present?).to eq(true)
  end

  it "has products" do
    user = User.create!(user_attributes)
    order1 = Order.new(order_attributes(customer_company: "Wunjo"))
    order2 = Order.new(order_attributes(customer_company: "Mattchets"))

    product1 = order1.products.new(product_attributes(code: "Pierre Bensusan"))
    product1.user = user
    product1.save!

    product2 = order2.products.new(product_attributes(code: "Thomas Leeb"))
    product2.user = user
    product2.save!

    expect(user.products).to include(product1)
    expect(user.products).to include(product2)
  end
end
