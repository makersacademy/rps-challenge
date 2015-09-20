require 'sinatra/base'
require './lib/game'

class RPSWeb < Sinatra::Base

  set :public_folder, proc {File.join(root, '..', 'public')}
  set :views, proc { File.join(root, '..', 'views') }

  enable :sessions, :static

  get '/' do
    erb :index
  end

  post '/' do
    session[:name] = params[:name]
    redirect '/account'
  end

  get '/account' do
    @user = session[:name]
    erb :account
  end

  post '/account' do
    if params[:game] == "one-player"
      session[:game] = Game.new(Player, Computer)
      redirect '/one-player-game'
    else
      session[:game] = Game.new(Player, Player)
      redirect '/two-player-game'
    end
  end

  get '/one-player-game' do
    @user = session[:name]
    @game = session[:game]
    erb :one_player_game
  end

  post '/one-player-game' do
    session[:selection] = params[:selection]
    redirect '/one-player-result'
  end

  get '/one-player-result' do
    session[:game].player1.choice(session[:selection])
    @result = session[:game].result
    erb :one_player_result
  end

  get '/two-player-game' do
    @user = session[:name]
    @game = session[:game]
    erb :two_player_game_player1
  end

  post '/two-player-game-player1' do
    session[:selection] = params[:selection].to_sym
    redirect '/two-player-game-player2'
  end

  get '/two-player-game-player2' do
    @game = session[:game]
    erb :two_player_game_player2
  end

  post '/two-player-game-player2' do
    session[:selection2] = params[:selection2].to_sym
    redirect '/two-player-result'
  end

  get '/two-player-result' do
    session[:game].player1.choice(session[:selection])
    session[:game].player2.choice(session[:selection2])
    @result = session[:game].result
    erb :two_player_result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
