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
      session[:game1] = Game.new(Player, Computer)
      redirect '/one-player-game'
    else
      session[:game2] = Game.new(Player, Player)
      redirect '/two-player-game'
    end
  end

  get '/one-player-game' do
    @user = session[:name]
    @game = session[:game1]
    erb :one_player_game
  end

  post '/one-player-game' do
    session[:selection] = params[:selection]
    redirect '/one-player-result'
  end

  get '/one-player-result' do
    session[:game1].player1.choice(session[:selection])
    @result = session[:game1].result
    erb :one_player_result
  end

  get '/two-player-game' do
    @user = session[:name]
    @game = session[:game2]
    erb :two_player_game
  end

  post '/two-player-game' do
    session[:selection] = params[:selection]
    session[:selection2] = params[:selection2].to_sym
    redirect '/two-player-result'
  end

  get '/two-player-result' do
    session[:game2].player1.choice(session[:selection])
    session[:game2].player2.choice(session[:selection2])
    @result = session[:game2].result
    erb :two_player_result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
