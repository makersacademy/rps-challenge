require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'secret'
  set :public_folder, '/public'

  get '/' do
    erb :index
  end

  post '/game' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  get '/result' do
    @choice = session[:choice]
    @rand = ['Rock', 'Paper', 'Scissors'].sample

    if @choice == @rand
      @message = "It's a draw!"
    elsif @choice == 'Rock' && @rand == 'Scissors' || @choice == 'Scissors' && @rand == 'Paper' || @choice == 'Paper' && @rand == 'Rock'
      @message = "You won!"
    elsif @choice == 'Rock' && @rand == 'Paper' || @choice == 'Scissors' && @rand == 'Rock' || @choice == 'Paper' && @rand == 'Scissors'
      @message = "You Lost!"
    end

    erb :result
  end

  post '/rock' do
    session[:choice] = 'Rock'
    redirect '/result'
  end

  post '/paper' do
    session[:choice] = 'Paper'
    redirect '/result'
  end

  post '/scissors' do
    session[:choice] = 'Scissors'
    redirect '/result'
  end

  run! if app_file == $0
end
