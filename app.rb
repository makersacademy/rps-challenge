require 'sinatra/base'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect to('/play')
  end

  get '/play' do
    @name = session[:player_name]
    erb :play
  end

  get '/rock' do
    @name = session[:player_name]
    rock_answers = ["Computer selected Paper: You Lose!", "Computer selected Scissors: You Win!"]
    @answers = rock_answers.sample
    erb :rock
  end
  
  get '/paper' do
    erb :paper
  end

  get '/scissors' do
    erb :scissors
  end

  run! if app_file == $0
end