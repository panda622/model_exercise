class Text < ApplicationRecord
  validates :headline, :content, presence: true

  belongs_to :article, optional: true
  default_scope { order(:position) }

end
