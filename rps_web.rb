require 'sinatra/base'
require './lib/player'
# require './lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions

  helpers do
    def player_stored
      Player.find(session[:player_id])
    end

    def add_player(player)
      id = player.object_id
      Player.add(id, player)
      session[:player_id] = id
    end
  end

  get '/' do
    if player_stored
      "Hey, #{player_stored.name}!"
    else
      redirect '/register'
    end
  end

  get '/register' do
    erb :register
  end

  post '/player' do
    player = Player.new(params[:player_01_name])
    add_player(player)
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
