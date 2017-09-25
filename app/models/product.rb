class Product < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|jpeg|png)\z}i,
    message: 'must be a URL for a GIF, JPG, JPEG or PNG file'
    }
end
