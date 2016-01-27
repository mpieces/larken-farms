class Subscriber < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true, format: {
    with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i,
    message: 'must be a valid email address.'
  }
end
