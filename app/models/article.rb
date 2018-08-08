class Article < ApplicationRecord
  has_many :texts
  has_many :pictures

  def self.get_articles
    sql = "Select DISTINCT texts.article_id, 
            texts.position AS TextPosision, 
            pictures.position AS PicturePosition, 
            texts.headline AS TextHeadline, 
            pictures.headline AS PictureHeadline, 
            texts.content from texts INNER JOIN pictures 
            WHERE texts.article_id = pictures.article_id
            ORDER BY pictures.position"
    ActiveRecord::Base.connection.execute(sql)
  end

  def finished?
    self.created_at < Time.now
  end

  def get_content(article_id)
    Article.get_articles.select { |a| a.article_id = article_id }
  end

end
