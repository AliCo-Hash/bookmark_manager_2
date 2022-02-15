require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
     'Hello world!'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end
  
  get '/bookmarks/create' do
    website = params[:website]
    Bookmark.create(website)
    erb :'bookmarks/create'
    redirect '/bookmarks'
  end

  run! if app_file == $0
end