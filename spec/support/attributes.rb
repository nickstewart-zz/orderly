def order_attributes(overrides = {})
  {
    customer: "Acme1",
    model_number: "XYZ22",
    description: "New New Thing",
    sales_person: "Jill",
    total: 678.00,
    delivery_due_on: "2015-05-2"
  }.merge(overrides)
end

def product_attributes(overrides = {})
  {
    code: "O-22",
    description: "Original Series, Mahogany and Cedar. Options: None specified"
    price: 2765
  }.merge(overrides)
end