# raise "Only run this locally" unless Rails.env.development?

Product.delete_all
User.delete_all
Cart.delete_all
LineItem.delete_all
# Contact.delete_all
Order.delete_all

# Products
Product.create!(
  title: 'Peaches',
  description: "1 lb. of juicy Whiteflesh peaches",
  image_url: 'peach-icon.png',
  price: 15.00
)
Product.create!(
  title: 'blackberries',
  description: "I am a description",
  image_url: 'bb-icon.png',
  price: 20.00
)

Product.create!(
  title: 'Cherries',
  description: "I am a cherry description",
  image_url: 'cherries.jpg',
  price: 60.00
  )

# Users
User.create!(
  name: "Ken",
  password: "password",
  admin: true
)

User.create!(
  name: "mer",
  password: "123",
  admin: true
)

(1..100).each do |i|
  Order.create(
    name: "Customer #{i}",
    address: "#{i} Main Street",
    email: "customer-#{i}@example.com",
    pay_type: "Visa"
  )
end
