require 'sinatra/base'

class GameApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @name = params[:name]
    erb :named_player
  end

  # start the server if ruby file executed dierectly
  run! if app_file == $0

end
