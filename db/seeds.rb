# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Order.create!([
  {
    customer_company: "Bluedog",
    customer_name: "Jenn",
    total: 678.00,
  },
  {
    customer_company: "The Fellowship of acoustic guitars",
    customer_name: "Rudi",
    total: 907.00
  },
  {
    customer_company: "Guitar Guitar",
    customer_name: "Steve",
    total: 4050.00
  },
  {
    customer_company: "Wunjo",
    customer_name: "Jeff",
    total: 2330.00
  }
])

Product.create!([
  {
    order_id: 1,
    code: "O-35",
    group: "35 Series",
    options_standard: "Size: O, Indian Rosewood/Sitka Spruce",
    options_additional: "None specified",
    price: 2765.00
  },
  {
    order_id: 1,
    code: "O-32",
    group: "Original Series",
    options_standard: "Size: O, Indian Rosewood/Sitka Spruce",
    options_additional: "None specified",
    price: 2765.00
  },
  {
    order_id: 2,
    code: "O-22",
    group: "Original Series",
    options_standard: "Size: O, Mahogany/Red Cedar",
    options_additional: "None specified",
    price: 2765.00
  },
  {
    order_id: 2,
    code: "O-22",
    group: "Original Series",
    options_standard: "Size: O, Mahogany/Red Cedar",
    options_additional: "None specified",
    price: 2765.00
  },
  {
    order_id: 2,
    code: "O-22",
    group: "Original Series",
    options_standard: "Size: O, Mahogany/Red Cedar",
    options_additional: "None specified",
    price: 2765.00
  },
  {
    order_id: 3,
    code: "O-22",
    group: "Original Series",
    options_standard: "Size: O, Mahogany/Red Cedar",
    options_additional: "None specified",
    price: 2765.00
  },
  {
    order_id: 3,
    code: "O-22",
    group: "Original Series",
    options_standard: "Size: O, Mahogany/Red Cedar",
    options_additional: "None specified",
    price: 2765.00
  },
  {
    order_id: 3,
    code: "O-22",
    group: "Original Series",
    options_standard: "Size: O, Mahogany/Red Cedar",
    options_additional: "None specified",
    price: 2765.00
  },
  {
    order_id: 4,
    code: "O-22",
    group: "Original Series",
    options_standard: "Size: O, Mahogany/Red Cedar",
    options_additional: "None specified",
    price: 2765.00
  },
  {
    order_id: 4,
    code: "O-22",
    group: "Original Series",
    options_standard: "Size: O, Mahogany/Red Cedar",
    options_additional: "None specified",
    price: 2765.00
  },
  {
    order_id: 4,
    code: "O-22",
    group: "Original Series",
    options_standard: "Size: O, Mahogany/Red Cedar",
    options_additional: "None specified",
    price: 2765.00
  },
  {
    order_id: 4,
    code: "O-22",
    group: "Original Series",
    options_standard: "Size: O, Mahogany/Red Cedar",
    options_additional: "None specified",
    price: 2765.00
  }
])