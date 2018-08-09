class Article < ApplicationRecord
  has_many :texts
  has_many :pictures
  default_scope { order('position ASC') }

  def finished?
    self.created_at < Time.now
  end

end
