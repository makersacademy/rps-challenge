require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/test' do
    "Testing infrastructure working"
  end

  get '/' do
    erb :index
  end

  get '/signin-2player' do
    erb :two_player_signin
  end

  get '/signin-1player' do
    erb :one_player_signin
  end

  post '/names' do
    session[:marketer_1] = params[:marketer_1]
    session[:marketer_2] = params[:marketer_2]
    if !session[:marketer_2]
      session[:marketer_2] = 'Bot'
    end
    redirect('/game-choice')
  end

  get '/game-choice' do
    @marketer_1 = session[:marketer_1]
    @marketer_2 = session[:marketer_2]
    erb :game_choice
  end

  get '/play-RPS' do
    erb :play
  end
end
