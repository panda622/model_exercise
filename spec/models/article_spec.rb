require 'rails_helper'
RSpec.describe Article, type: :model do
  let (:article) { Article.create(title: 'First Article')}

  context 'Validate' do

    it { should validate_presence_of(:title) }

    it do
      should validate_numericality_of(:like).
       is_greater_than_or_equal_to(0)
    end

    it 'is published false' do
      article.published_time = 2.days.since
      article.save
      expect(article.published?).to be false
    end

    it 'is published true' do
      article.published_time = 2.days.ago
      article.save
      expect(article.published?).to be true
    end
  end

  context 'Associaton' do
    it { should have_many(:texts) }
    it { should have_many(:pictures) }
  end
end
