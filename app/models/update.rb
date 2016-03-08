class Update < ActiveRecord::Base

  validates :content, presence: true
end
