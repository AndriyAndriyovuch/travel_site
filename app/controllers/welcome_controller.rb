class WelcomeController < ApplicationController
  def index
    @articles = articles_collection
    p @articles.last.preview_img
  end

  private

  def articles_collection
    Article.all
  end
end
