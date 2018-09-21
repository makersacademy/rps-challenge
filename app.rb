require 'sinatra/base'

class GameApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    @name = session[:name]
    erb :named_player
  end

  get '/play' do
    @name = session[:name]
    erb :move
  end



  # start the server if ruby file executed dierectly
  run! if app_file == $0

end
