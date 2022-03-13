require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:form)
  end

  post '/name' do
    @player_name = params[:player_name]
    p params
    erb(:name)
  end

  run! if app_file == $0
end
