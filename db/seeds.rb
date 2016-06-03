# raise "Only run this locally" unless Rails.env.development?


User.delete_all



# Products
# Product.create!(
#   title: 'Peaches',
#   description: "1 lb. of juicy Whiteflesh peaches"


# )
# Product.create!(
#   title: 'blackberries',
#   description: "I am a description"

# )

# Product.create!(
#   title: 'Cherries',
#   description: "I am a cherry description"

#   )

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
