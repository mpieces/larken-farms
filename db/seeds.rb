raise "Only run this locally" unless Rails.env.development?

Product.delete_all

# Products
Product.create!(
  title: 'Peaches',
  description: "1 lb. of juicy Whiteflesh peaches",
  image_url: 'peach-icon.png',
  price: 15.00
)
Product.create(
  title: 'blackberries',
  description: "I am a description",
  price: 20.00
)

# Users
User.create(
  name: "Ken",
  password: "password"
  admin: true
)
