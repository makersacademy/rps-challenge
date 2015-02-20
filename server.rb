require 'sinatra/base'
require_relative 'lib/player'

class Server < Sinatra::Base

  enable :sessions

  def set_player
    player_name = params[:player_name]
    session[:me] = Player.new({name: player_name})
    @player_name = session[:me]
  end

  get '/' do
    erb :index
  end

  post '/' do
    if params[:player_name].empty?
      erb :index
    else
      set_player
      erb :game
    end
  end

  post '/game' do
    erb :game
  end

  post '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
