require "open-uri"

class Picture < ApplicationRecord
  validates :headline, presence: true

  belongs_to :article, optional: true
  default_scope { order('position') }
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

   def picture_from_url(url)
    self.image = open(url)
  end
end
