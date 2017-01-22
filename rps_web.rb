require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions

  helpers do
    def stored_player
      Player.find(session[:player_id])
    end

    def add_player(player)
      id = player.object_id
      Player.add(id, player)
      session[:player_id] = id
    end

    def stored_computer
      Computer.find(session[:computer_id])
    end

    def add_computer(computer)
      id = computer.object_id
      Computer.add(id, computer)
      session[:computer_id] = id
    end
  end

  get '/' do
    if stored_player
      redirect '/player_01_choose'
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

  get '/player_01_choose' do
    erb :player_01_choose
  end

  post '/player_02_choose' do
    if Game::WEAPONS.include?(params[:player_01_weapon].to_sym)
      stored_player.choose(params[:player_01_weapon].to_sym)
      computer = Computer.new
      add_computer(computer)
      session[:player_02_weapon] = stored_computer.choose
      erb :player_02_choose
    else
      erb :player_01_choose
    end
  end

  get '/result' do
    @game = Game.new(stored_player, stored_computer)
    erb @game.result
  end

  run! if app_file == $0
end
