require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPSApp < Sinatra::Base

  enable :sessions

  before { @player_one = Player.return_player_one }
  before { @player_two = Player.return_player_two }

  # helpers do
  #   def current_player
  #     Player.find(session[:player_id])
  #   end
  #
  #   def add_player(player)
  #     Player.find(session[:player_id])
  #   end
  # end

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
    $choice_1 = params[:choice_1]
    erb :choices_2
  end

  get '/evaluate' do
    @choice_2 = params[:choice_2]
    $weapon_1 = Weapon.new
    if $choice_1 == "ROCK"
      $weapon_1.choose_rock
    elsif $choice_1 == "PAPER"
      $weapon_1.choose_paper
    else
      $weapon_1.choose_scissors
    end
    $weapon_2 = Weapon.new
    if @player_two.name == :the_computer
      @choice_2 = $weapon_2.computer_choice
    elsif @choice_2 == "ROCK"
      $weapon_2.choose_rock
    elsif @choice_2 == "PAPER"
      $weapon_2.choose_paper
    else
      $weapon_2.choose_scissors
    end
    $game = Game.new($weapon_1, $weapon_2)
    @player_one.store_choice($weapon_1.choice)
    @player_two.store_choice($weapon_2.choice)
    redirect '/outcome'
  end

  get '/outcome' do
    @game = $game
    @weapon_1 = $weapon_1
    @weapon_2 = $weapon_2
    @game.add_submitted_weapons
    @game.evaluate
    @outcome = @game.winner
    @game.set_statuses
    @player_one.store_outcome(@weapon_1.won)
    @player_two.store_outcome(@weapon_2.won)
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
