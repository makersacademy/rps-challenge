require 'sinatra/base'
require_relative 'game'

class RPSChallenge < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :homepage, layout: false
  end

  post '/' do
    @name = params[:name]
    session[:name] = @name
    redirect '/mode' unless session[:name].empty?
    erb :homepage, layout: false
  end

  get '/mode' do
    @name = session[:name]
    erb :mode
  end

  get '/singleplayer' do
    @name = session[:name]
    $game1 = Game.new(Player, Moves)
    erb :singleplayer
  end

  post '/singleplayer' do
    @move = params[:move]
    session[:move] = @move
    @computer_move = $game1.player_2.random_move
    session[:computer_move] = @computer_move.last.to_s
    $game1.player_1.choose(@move.to_sym)
    redirect '/result'
    erb :singleplayer
  end

  get '/result' do
    @move = session[:move]
    @computer_move = session[:computer_move]
    @win = $game1.player_1.winner?
    @draw = $game1.draw?
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
