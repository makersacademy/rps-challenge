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

  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
