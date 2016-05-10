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

  has_attached_file :image, :storage => :filesystem

  validates_attachment :image, presence: true,
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
