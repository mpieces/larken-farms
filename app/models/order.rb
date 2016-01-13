class Order < ActiveRecord::Base
  PAYMENT_TYPES = ["Visa", "Mastercard", "Amex", "Discover"]
end
