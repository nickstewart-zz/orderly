def order_attributes(overrides = {})
  {
    total: 678.00
  }.merge(overrides)
end

def product_attributes(overrides = {})
  {
    code: "O-35",
    group: "35 Series",
    options_standard: "Size: O, Back and Sides: Indian Rosewood, Sound Board: Sitka Spruce",
    options_additional: "None specified",
    price: 2765.00
  }.merge(overrides)
end

def user_attributes(overrides = {})
  {
    name: "Example User",
    email: "user@example.com",
    password: "secret",
    password_confirmation: "secret"
  }.merge(overrides)
end

def customer_attributes(overrides = {})
  {
    name: "Example Customer"
  }.merge(overrides)
end
