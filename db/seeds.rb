# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Order.create!([
  {
    customer: "Retailer1",
    model_number: "XYZ22",
    description: "New New Thing",
    sales_person: "Joe",
    total: 678.00,
    delivery_due_on: "2015-05-2"
  },
  {
    customer: "Retailer2",
    model_number: "ADS99",
    description: "Another New Thing",
    sales_person: "Jill",
    total: 907.00,
    delivery_due_on: "2015-05-2"
  },
  {
    customer: "Retailer3",
    model_number: "MKU23",
    description: "And Another Thing",
    sales_person: "Tina",
    total: 821.00,
    delivery_due_on: "2015-05-2"
  },
  {
    customer: "Retailer4",
    model_number: "SKU33",
    description: "Yet Another New Thing",
    sales_person: "Sam",
    total: 3400.00,
    delivery_due_on: "2015-05-2"
  }
])