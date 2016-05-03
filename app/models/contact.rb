class Contact < MailForm::Base
# Added:
  validates :name, :email, presence: true
  validates :email, format: {
    with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i,
    message: 'Must be a valid email address.'
  }


# From form tutorial:
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true



  # Declare the e-mail headers. It accepts anything the mail method in ActionMailer accepts.
  def headers
    {
      :subject => "Contact Form Message",
      :to => "mer0522@gmail.com", "paincenterdallas@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end