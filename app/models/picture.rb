class Picture < ApplicationRecord
  belongs_to :article, optional: true
  before_create :generate_position

  def generate_position
    p1 = Text.last.try(:position)
    p2 =  Picture.last.try(:position)

    p1 ||= 0
    p2 ||= 0

    p = p1 > p2 ? p1 : p2
    self.position = p + 1
  end
end
