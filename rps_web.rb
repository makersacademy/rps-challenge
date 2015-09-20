require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/rock'
require_relative 'lib/paper'
require_relative 'lib/scissors'

class RPS_Challenge < Sinatra::Base

  set :views, proc { File.join(root, '.', 'views') }

  enable :sessions

  $game = nil
  $name1 = nil
  $name2 = nil

  get '/' do
    @name = session[:name]
    erb :index
  end

  post '/' do
    redirect ('/') if no_params_name
    session[:name] = params[:name]
    redirect ('/')
  end

  post '/play_game' do
    game_setup_vs_computer
    redirect ('/play_game')
  end

  get '/play_game' do
    erb :play_game
  end

  post '/result' do
    arm_weapons_vs_computer
    redirect ('/result')
  end

  get '/result' do
    assign_name_weapon_vars
    @result = $game.challenge
    erb :result
  end

  private

  def game_setup_vs_computer
    player1 = Player.new
    player2 = Player.new
    player1.name = session[:name]
    player2.name = "Computer"
    $game = Game.new(player1,player2)
  end

  def no_params_name
    params[:name].to_s == ""
  end

  def arm_weapons_vs_computer
    $game.player1.current_selection = Object.const_get(params[:weapon]).new
    $game.player2.random_selector
  end

  def assign_name_weapon_vars
    @name1 = $game.player1.name
    @weapon1 = $game.player1.current_selection.class.to_s
    @name2 = $game.player2.name
    @weapon2 = $game.player2.current_selection.class.to_s
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
