require 'sinatra/base'
require './lib/computer.rb'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1]
    @player_1_name = Player.new(session[:player_1_name])
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb(:play)
  end

  get '/game' do
    session[:player_1_weapon] = params[:weapon]
    @player_weapon = session[:player_1_weapon]
    @computer_weapon = Computer.new.weapon
    @result = Game.new(@player_weapon).beats?(@computer_weapon)

    erb(:game)
  end

  run! if app_file == $0

end
