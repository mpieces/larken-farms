class Photo < ActiveRecord::Base
  if Rails.env.production?
    has_attached_file :image,
     styles: { thumb: ["64x64#", :jpg], original: ["400x400>", :jpg]},
     convert_options: { thumb: "-quality 75 -strip", original: "-quality 85 -strip" },
     storage: :s3,
     s3_credentials: {
      bucket: ENV['S3_BUCKET_NAME'],
      access_key_id: ENV["AWS_ACCESS_KEY_ID"],
      secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
    }
  else
    has_attached_file :image, :styles => { thumb: ["64x64#", :jpg], original: ["400x400>", :jpg]},
                    :storage => :filesystem
  end
   # s3_host_name: "s3-us-west-2.amazonaws.com",
   # s3_protocol: "https"

   # :s3_permissions => :private
   # :region => "us-west-2",
   # :endpoint => "larkenfarms.s3.amazonaws.com"

  validates_attachment :image, presence: true,
   content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
   size: { in: 0..500.kilobytes }

end


