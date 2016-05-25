# raise "Only run this locally" unless Rails.env.development?

Product.delete_all
User.delete_all
Hour.delete_all
# Cart.delete_all
# LineItem.delete_all
# Contact.delete_all
# Order.delete_all

# Products
Product.create!(
  title: 'Peaches',
  description: "1 lb. of juicy Whiteflesh peaches"
  # image: 'peach-icon.png'

)
Product.create!(
  title: 'blackberries',
  description: "I am a description"
  # image: 'bb-icon.png'
)

Product.create!(
  title: 'Cherries',
  description: "I am a cherry description"
  # image: 'cherries.jpg'
  )

# Users
User.create!(
  name: "Ken",
  password: "test",
  admin: true
)

User.create!(
  name: "mer",
  password: "123",
  admin: true
)

# Hour.create!(
#   content: "Monday-Friday 9am - 4pm"
#   )



# (1..30).each do |i|
#   Subscriber.create(
#     email: "customer-#{i}@example.com")
# end
