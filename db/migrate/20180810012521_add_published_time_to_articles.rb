class AddPublishedTimeToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :published_time, :datetime
  end
end
