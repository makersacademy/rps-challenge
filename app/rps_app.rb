require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSApp < Sinatra::Base

  enable :sessions

  before { @player_one = Player.return_player_one }
  before { @player_two = Player.return_player_two }
  before { @current_game = Game.return_current_game }
  before { @weapon_one = Weapon.return_weapon_one }
  before { @weapon_two = Weapon.return_weapon_two }

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
    $choice_1 = params[:choice_1]
    erb :choices
  end

  post '/choices_2' do
    choice_1 = params[:choice_1]
    @weapon_one = Weapon.create_weapon_one
    if choice_1 == "ROCK"
      @weapon_one.choose_rock
    elsif choice_1 == "PAPER"
      @weapon_one.choose_paper
    else
      @weapon_one.choose_scissors
    end
    erb :choices_2
  end

  get '/evaluate' do

    choice_2 = params[:choice_2]
    choice_1 = params[:choice_1]
    @weapon_two = Weapon.create_weapon_two
    if @player_two.name == :the_computer
      @weapon_one = Weapon.create_weapon_one
      if choice_1 == "ROCK"
        @weapon_one.choose_rock
      elsif choice_1 == "PAPER"
        @weapon_one.choose_paper
      else
        @weapon_one.choose_scissors
      end
      @weapon_two.computer_choice
    elsif choice_2 == "ROCK"
      @weapon_two.choose_rock
    elsif choice_2 == "PAPER"
      @weapon_two.choose_paper
    else
      @weapon_two.choose_scissors
    end
    @current_game = Game.create(@weapon_one, @weapon_two)
    @player_one.store_choice(@weapon_one.choice)
    @player_two.store_choice(@weapon_two.choice)
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
