require 'rails_helper'

RSpec.describe Article, type: :model do
  it "
  - article#index
  - 記事の一覧の時にbodyが空でないかをチェック" do
  @articles = Article.all
  @articles.each do |article|
    expect(article.body).not_to eq nil
  end
  end
end
