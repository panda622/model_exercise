class Article < ApplicationRecord
  validates :title, presence: true
  validates_numericality_of :like, only_integer: true, greater_than_or_equal_to: 0

  has_many :texts
  has_many :pictures

  def published?
    self.published_time.present? && published_time < Time.now
  end

end
