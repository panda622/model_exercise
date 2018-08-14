class Text < ApplicationRecord
  validates :headline, :content, :position, presence: true
  validates :position, uniqueness: true

  belongs_to :article, optional: true
  default_scope { order(:position) }

end
