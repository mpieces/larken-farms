class Product < ActiveRecord::Base

  validates :title, presence: true
  # validates :price, numericality: {greater_than_or_equal_to: 0.01}
  # validates :title, uniqueness: true

  # has_many :line_items, dependent: :destroy

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
   content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
   size: { in: 0..500.kilobytes }


   # :image, presence: true

end
