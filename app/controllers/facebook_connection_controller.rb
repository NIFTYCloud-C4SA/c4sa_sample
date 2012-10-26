class FacebookConnectionController < ApplicationController
  def index
    @keyword = params[:keyword]
    
    if @keyword != nil and @keyword.length > 0 then
      graph = Koala::Facebook::GraphAPI.new
#     @search_results = graph.get_comments_for_urls("http://zasshi.news.yahoo.co.jp/article?a=20121001-00000004-natiogeo-int")
      @search_results = graph.search(@keyword, {:type => "post", :limit => 50})
    end
  end
end
