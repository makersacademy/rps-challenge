require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do 
    @player_1_name = params[:player_1_name]
    erb :play
  end

  run! if app_file == $0
end