def order_attributes(overrides = {})
  {
    customer: "Acme1",
    model_number: "XYZ22",
    description: "New New Thing",
    sales_person: "Jill",
    total: 678.00,
    invoiced_on: Date.today,
    payment_terms: 1
  }.merge(overrides)
end