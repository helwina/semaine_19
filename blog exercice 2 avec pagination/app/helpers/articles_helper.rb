module ArticlesHelper
  def article_link (article)
    "<a href='/articles/#{article.id}'>".html_safe + article.title + "</a>".html_safe
  end
end
