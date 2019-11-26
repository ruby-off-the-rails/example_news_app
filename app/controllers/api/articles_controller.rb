class Api::ArticlesController < ApplicationController
  def index
    @response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search_term]}&from=2019-10-26&sortBy=publishedAt&apiKey=").parse
    render 'index.json.jb'
  end
end
