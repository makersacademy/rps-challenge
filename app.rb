require 'sinatra/base'
require 'sinatra/reloader'

class BookMarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end
  
  run! if app_file == $0
end
