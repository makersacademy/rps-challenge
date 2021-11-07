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

  get '/name' do
    erb(:play)
  end

  post '/name' do
    session[:name] = params[:name]
    # @name = params[:name]
    # @player_2_name = params[:player_2_name]
    redirect '/play'
    # erb(:play)
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end


  run! if app_file == $0
end
