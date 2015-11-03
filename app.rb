require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class Game_rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player])
    $computer = Computer.new
    redirect :play
  end

  get '/play' do
    @player = $player
    @computer = $computer
    erb :play
  end

  post '/user_vs_pc' do
    session[:rps] = params[:rps].to_sym
    session[:computer] = $computer.choose_rand
    $game = Game.new($player.user_choose_weapon(session[:rps]), session[:computer])
    redirect :result
  end

  get '/result' do
    @user_choice = session[:rps]
    @computer_choice = session[:computer]
    @game = $game
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
