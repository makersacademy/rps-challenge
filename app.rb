require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    erb(:play)
  end 
  
  run! if app_file == $0
end
