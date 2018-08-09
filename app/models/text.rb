class Text < ApplicationRecord
  belongs_to :article, optional: true
  default_scope { order('position ASC') }

  scope :get_sentences,  -> (article_id) { where('article_id = ?', article_id) }


end
