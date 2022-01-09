require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class RPSGame < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_1_name].capitalize)
    # I promise to never use global variables in tech tests
    $game = Game.new(player.name)
  
    redirect '/play'
  end

  get '/play' do
    @game = $game
    
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    session[:computer_move] = $game.computer_move

    redirect '/gameover'
  end

  get '/gameover' do
    @result = $game.outcome(session[:move], session[:computer_move])
    @move = session[:move]
    @computer_move = session[:computer_move]
    
    erb :game_over
  end

  run! if app_file == $0
end
