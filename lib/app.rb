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
    @option = 1
    redirect('/game')
  end

  get '/game_paper' do
    @option = 2
    redirect('/game')
  end

  get '/game_scissors' do
    @option = 3
    redirect('/game')
  end

  get '/game' do
    if @option == 1
      @choice = 'rock'
    elsif @option == 2
      @choice = 'paper'
    elsif @option == 3
      @choice = 'scissors'
    else
      @choice = 'something is wrong'
    end
    erb(:game)
  end

end
