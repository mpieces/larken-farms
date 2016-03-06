class Pic < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles: { medium: "750x600>", thumb: "450x300>" }
  # , default_url: "/images/:style/missing.png"
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates_attachment :image, :content_type => { :content_type => "image/jpg"}
end
