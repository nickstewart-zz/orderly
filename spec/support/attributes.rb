def order_attributes(overrides = {})
  {
    customer_company: "Bluedog",
    customer_name: "Jenn",
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