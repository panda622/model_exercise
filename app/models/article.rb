class Article < ApplicationRecord
  validates :title, presence: true

  has_many :texts
  has_many :pictures

  def published?
    self.published_time.present? && published_time < Time.now
  end

end
