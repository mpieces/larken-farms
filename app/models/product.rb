class Product < ActiveRecord::Base

  # has_many :line_items
  # has_many :orders, through: :line_items

  # before_destroy :ensure_not_referenced_by_any_line_item

  validates :title, :description, presence: true
  # validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true

  # validates :image_url, allow_nil: true, format: {
  #   with:    %r{\.(gif|jpg|png)\Z}i,
  #   message: 'Must be a URL for GIF, JPG or PNG image.' }

  def self.latest
    Product.order(:updated_at).last
  end

  if Rails.env.production?
    has_attached_file :image,
     # styles: { thumb: ["64x64#", :jpg], original: ["400x400>", :jpg]},
     # convert_options: { thumb: "-quality 75 -strip", original: "-quality 85 -strip" },
     storage: :s3,
     s3_credentials: {
      bucket: ENV['S3_BUCKET_NAME'],
      access_key_id: ENV["AWS_ACCESS_KEY_ID"],
      secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
    }
  else
    has_attached_file :image, :storage => :filesystem
  end


  validates_attachment
  :image, presence: true,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  # private

  #   #ensure that there are no line items referencing this product
  #   def ensure_not_referenced_by_any_line_item
  #     if line_items.empty?
  #       return true
  #     else
  #       errors.add(:base, 'Line Items present.')
  #     end
  #   end
end
