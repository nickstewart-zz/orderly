def order_attributes(overrides = {})
  {
    customer: "Acme1",
    model_number: "XYZ22",
    description: "New New Thing",
    sales_person: "Jill",
    total: 678.00,
    terms: "30 Days"
  }.merge(overides)
end