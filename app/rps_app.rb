require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSApp < Sinatra::Base

  enable :sessions

  before { @player_one = Player.return_player_one }
  before { @player_two = Player.return_player_two }
  before { @current_game = Game.return_current_game }
  before { @weapon_one = Weapon.return_weapon }

  get '/' do
    erb :intro
  end

  post '/names' do
    player_2_name = params[:player_2_name].empty? ? :the_computer : params[:player_2_name]
    player_1 = Player.create_player_one(params[:player_1_name])
    player_2 = Player.create_player_two(player_2_name)
    redirect '/choices'
  end

  get '/choices' do
    erb :choices
  end

  post '/choices_2' do
    choice_1 = (params[:choice_1]).to_sym
    @weapon_one = Weapon.create(choice_1)
    erb :choices_2
  end

  get '/evaluate' do
    choice_2 = params[:choice_2].nil? ? params[:choice_2] : (params[:choice_2]).to_sym
    weapon_two = Weapon.new(choice_2)
    weapon_two.computer_choice
    @current_game = Game.create(@weapon_one, weapon_two)
    @player_one.store_choice(@weapon_one.choice)
    @player_two.store_choice(weapon_two.choice)
    redirect '/outcome'
  end

  get '/outcome' do
    @current_game.add_submitted_weapons
    @current_game.evaluate
    @current_game.set_statuses
    @player_one.store_outcome(@current_game.weapon_one.won)
    @player_two.store_outcome(@current_game.weapon_two.won)
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
