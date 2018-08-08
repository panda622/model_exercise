class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def increment_like
    self.like = self.like + 1
    self.save
  end

  def like
    self.like
  end
end
