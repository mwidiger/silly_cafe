# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Item.delete_all
Price.delete_all
TaxRate.delete_all
Order.delete_all
OrderLineItem.delete_all
Discount.delete_all
OrderDiscount.delete_all

i = Item.create(name: "Soda")
Price.create(item: i, price: '3.00')
TaxRate.create(item: i, tax_rate: '0.05')

ii = Item.create(name: "Pizza")
Price.create(item: i, price: '2.50')
TaxRate.create(item: i, tax_rate: '0.08')

iii = Item.create(name: "Fries")
Price.create(item: i, price: '2.00')
TaxRate.create(item: i, tax_rate: '0.05')

d = Discount.create(item: i, when_ordered_item: ii, discount_rate: '0.25')