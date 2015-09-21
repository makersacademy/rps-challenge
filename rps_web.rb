require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/weapon'

class RPS_Challenge < Sinatra::Base

  set :views, proc { File.join(root, '.', 'views') }

  enable :sessions

  $game = nil

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
    if $game
      $game.reset_player_options
    else
      game_setup_vs_computer
    end
    if params[:opponent] == "Buddy"
      redirect ('/play_game_buddy')
    end
    redirect ('/play_game')
  end

  get '/play_game' do
    erb :play_game
  end

  get '/play_game_buddy' do
    erb :play_game_buddy
  end

  post '/result' do
    arm_player_and_computer
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

  def arm_player_and_computer
    $game.player1.current_selection = Weapon.send(params[:weapon].downcase.to_sym)
    computer_option = [:rock, :paper, :scissors][rand(2)]
    $game.player2.current_selection = Weapon.send(computer_option)
  end

  def assign_name_weapon_vars
    @name1 = $game.player1.name
    @weapon1 = $game.player1.current_selection.name.to_s.capitalize
    @name2 = $game.player2.name
    @weapon2 = $game.player2.current_selection.name.to_s.capitalize
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
