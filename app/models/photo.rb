class Photo < ActiveRecord::Base

  has_attached_file :image,
   styles: { thumb: ["64x64#", :jpg], original: ["400x400>", :jpg]},
   convert_options: { thumb: "-quality 75 -strip", original: "-quality 85 -strip" },
   storage: :s3,
   s3_credentials: {access_key_id: ENV["AWS_KEY"] , secret_access_key: ENV["AWS_SECRET"] },
   bucket: "larkenfarms",
   # :s3_permissions => :private,
   # :region => "us-west-2",
   :endpoint => "larkenfarms.s3.amazonaws.com"

  validates_attachment :image, presence: true,
   content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
   size: { in: 0..500.kilobytes }

end


