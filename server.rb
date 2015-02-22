require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/weapon'

class Server < Sinatra::Base

  enable :sessions

  get '/' do
    computer = Player.new({:name => "Computer"})
    computer.weapon_choice = Weapon.new.random_weapon
    @game = Game.new
    session[:game] = @game
    @game.add_player(computer)
    erb :index
  end

  post '/' do
    if params[:player_name].empty?
      erb :index
    else
      player_name = params[:player_name]
      human = Player.new({name: player_name})
      @player_name = player_name
      @game = session[:game]
      @game.add_player(human)
      erb :game
    end
  end

  post '/game' do
    erb :game
  end

  post '/result' do
    @player_weapon = params[:weapon_choice]
    @game = session[:game]

    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
