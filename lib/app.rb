require 'sinatra'

class RPS < Sinatra::Base

  get '/' do
    erb(:register)
  end

  post '/user_registered' do
    @username = params[:username]
    erb(:user_registered)
  end

  get '/play' do
    erb(:play)
  end

  get '/game_rock' do
    @choice = 'rock'
    redirect('/game')
  end

  get '/game_paper' do
    @choice = 'paper'
    redirect('/game')
  end

  get '/game_scissors' do
    @choice = 'scissors'
    redirect('/game')
  end

  get '/game' do
    @choice = 'my choice'
    erb(:game)
  end

end
