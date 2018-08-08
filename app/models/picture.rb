require "open-uri"

class Picture < ApplicationRecord
  belongs_to :article, optional: true
  before_create :generate_position

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def generate_position
    p1 = Text.last.try(:position)
    p2 =  Picture.last.try(:position)

    p1 ||= 0
    p2 ||= 0

    p = p1 > p2 ? p1 : p2
    self.position = p + 1
  end

   def picture_from_url(url)
    self.image = open(url)
  end
end
