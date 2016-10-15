require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :intro
  end

  post '/names' do
    player_2_name = params[:player_2_name].empty? ? :the_computer : params[:player_2_name]
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(player_2_name)
    redirect '/choices'
  end

  get '/choices' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :choices
  end

  get '/evaluate' do
    @player_1 = $player_1
    @player_2 = $player_2
    @choice = params[:choice]
    $weapon_1 = Weapon.new
    if @choice == "ROCK"
      $weapon_1.choose_rock
    elsif @choice == "PAPER"
      $weapon_1.choose_paper
    else
      $weapon_1.choose_scissors
    end
    $weapon_2 = Weapon.new
    @computer_choice = $weapon_2.computer_choice
    $game = Game.new($weapon_1, $weapon_2)
    @player_1.store_choice($weapon_1.choice)
    @player_2.store_choice($weapon_2.choice)
    redirect '/outcome'
  end

  get '/outcome' do
    @game = $game
    @player_1 = $player_1
    @player_2 = $player_2
    @weapon_1 = $weapon_1
    @weapon_2 = $weapon_2
    @game.add_submitted_weapons
    @game.evaluate
    @outcome = @game.winner
    @game.set_statuses
    @player_1.store_outcome(@weapon_1.won)
    @player_2.store_outcome(@weapon_2.won)
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
