require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :register
  end

  post '/enter-name' do
    session[:player1_name] = params['player1_name']
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1_name]
    erb :play
  end

  post '/choose' do
    session[:choice] = params['choice']
    redirect '/result'
  end

  get '/result' do
    @player1_choice = session[:choice]
    @player2_choice = ['rock', 'paper', 'scissors'][Kernel.rand(0..2)]
    erb :result
  end

end
