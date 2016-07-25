require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end 

  get '/' do
    erb(:index)
  end

  get '/enter_names' do
    @players = params[:players]
    erb(:enter_names)
  end 

  post '/names' do
    player_1 = Player.new(name: params[:player_1])
  	player_2 = Player.new(name: params[:player_2])
    @game = Game.create(player_1: player_1, player_2: player_2)
    redirect '/play'
  end


  get '/play' do
	 erb(:play)
  end

  post '/choose_weapon' do
    @game.player_1.choose_weapon(weapon: params[:chosen_weapon_1])
    @game.player_2.choose_weapon(weapon: params[:chosen_weapon_2])
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
