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
  description: "1 lb. of juicy Whiteflesh peaches",
  image_url: 'peach-icon.png'

)
Product.create!(
  title: 'blackberries',
  description: "I am a description",
  image_url: 'bb-icon.png'
)

Product.create!(
  title: 'Cherries',
  description: "I am a cherry description",
  image_url: 'cherries.jpg'
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

Hour.create!(
  content: "Monday-Friday 9am - 4pm"
  )

# About.create!(
#   content: "<h3>Larken Farms began in 2000 as a hobby for Ken & Laura Jo Halverson to try out their green thumb at growing peaches. What started as a hobby has now turned into a full time orchard!</h3>
#   <br>
#   <h3>Larken Farms has over 10,000 trees with 30 varieties of Texas and California peaches, Santa Rosa plums, Hosul Asian pears, several hundred blackberry bushes, and more.</h3>
#   <br>
#   <h3>We also have a garden which produces a variety of home-grown vegetables. While we are not certified as organic growers, we practice organic methods for growing all of our fruits and vegetables.</h3>
#   <br>
#   <h3>Feel free to contact us using the contact form, and make sure to visit us soon!</h3>
#   <br>
#   <h3>Ken & Laura Jo</h3>"
#   )
# (1..100).each do |i|
#   Order.create(
#     name: "Customer #{i}",
#     address: "#{i} Main Street",
#     email: "customer-#{i}@example.com",
#     pay_type: "Visa"
#   )
# end

# (1..30).each do |i|
#   Subscriber.create(
#     email: "customer-#{i}@example.com")
# end
