5.times do |i|
    article = Article.create(title: "Article ##{i}", body: "A Articleです.", status: "public")
    5.times do |index|
        article.comments.create(commenter: "私だー#111", body: "#111", status: "public")
    end
end
