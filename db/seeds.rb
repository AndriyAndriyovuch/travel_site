categories = ["East Nusa Tenggara", "Bromo", "indonesian culture"]
articles = {
  article_1: { category: Category.find_or_create_by(title: "East Nusa Tenggara"), title: "Have you enjoyed your holiday?", body: "You will be amazed if you take part in this sailing Komodo island tour package. So it is also mandatory for you, besides enjoying Komodo tourism on Komodo Island, you also have to taste the marine tourism.  The beautiful waters of Komodo will make you meet many travelers from other countries." },
  article_2: { category: Category.find_or_create_by(title: "Bromo"), title: "Steady your steps, we will climb together!", body: "Enjoying the vast expanse of the sea of ​​​​sand, witnessing the splendor of Mount Semeru that soars into the sky, and gazing at the beauty of the sun moving out of its bed or otherwise enjoying the dim twilight from the Bromo ridge is an unforgettable experience when visiting Bromo." },
  article_3: { category: Category.find_or_create_by(title: "indonesian culture"), title: "Our culture here is very friendly to people", body: "known for his politeness, manners and gentleness. This becomes a characteristic when they mingle with other tribes and become basic traits that are passed down by their ancestors." }
}

categories.each { |category| Category.find_or_create_by(title: category) }

articles.each do |article, params|
  new_article = Article.create(params)
  new_article.preview_img.attach(io: File.open(Rails.root.join("app/assets/images/articles/#{article}.png")), filename: "#{article}.png")
end

