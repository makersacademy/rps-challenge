require 'sinatra/base'
require_relative '../lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  # tell sinatra where we're storing the views & public files
  set :views, proc { File.join(root, '..', 'views') }
  set :public_dir, proc { File.join(root, '..', 'public_dir') }

  get '/' do
    erb :index
  end

  post '/update-game' do
    session[:player_name] = params[:name_field].capitalize
    if not $game
      $game = Game.new(Player.new(session[:player_name]), Player.new)
      @player_1 = $game.player1
    else
      $game.player2.name = session[:player_name]
      @player_2 = $game.player2
    end
    erb :game
  end

  post '/result' do
    puts session[:player_move]
    $game.player1.name == session[:player_name] ? $game.player1.set_choice(params[:player_move]) : $game.player2.set_choice(params[:player_move])
    erb :result
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
