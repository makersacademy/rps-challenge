require 'sinatra/base'
require_relative 'game'

class RPSchallenge < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  get '/name' do
    @name = params[:name]
    erb :name
  end

  get '/game' do
    $game = Game.new Player

    erb :game
  end

  # post '/game' do

  #   player_weapon = params[:weapon]
  #   $game.player.pick player_weapon #run game logic - return win/lose/tie from player view
  #   @player_choice = $game.player.picked
  #   erb :game  
  # end

  post '/result' do #UNSURE WHY THIS LINE IS NOT POST '/GAME'

    $game.player.pick params[:weapon]
    @player_choice = $game.player.picked

    $game.play @player_choice

    @computer_choice = $game.computer_choice

    @winner = $game.winner



    erb :result
  end

  get '/result' do
    
    $game.player.pick params[:weapon]
    @player_choice = $game.player.picked

    $game.play @player_choice

    @computer_choice = $game.computer_choice

    @winner = $game.winner

    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
