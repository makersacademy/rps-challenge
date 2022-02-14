require 'sinatra/base'
require 'sinatra/reloader'


class Game < Sinatra::Base 
  configure :development do 
    register Sinatra::Reloader
  end 

  enable :sessions

  get '/' do 
    erb :index
  end 

  get '/result' do
    @game = Game.new
    erb @game.result
  end

  helpers do
    def current_player
      Player.find(session[:player_id])
    end

    def add_player(player)
      id = player.object_id
      Player.add(id, player)
      session[:player_id] = id
    end
  end

  get '/' do
    "Hello #{current_player.name}" if current_player
  end

  post '/player' do
    player = Player.new(params[:name])
    add_player(player)
    redirect_to '/'
  end

  get '/game' do
    erb :new_game
  end

  post '/game' do
    @game = Game.new(params)
    redirect to '/play'
  end

  run! if app_file == $0 
end


