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
    @rock_answers = rock_answers.sample
    erb :rock
  end
  
  get '/paper' do
    @name = session[:player_name]
    paper_answers = ["Computer selected Rock: You Win!", "Computer selected Scissors: You Lose!"]
    @paper_answers = paper_answers.sample
    erb :paper
  end

  get '/scissors' do
    @name = session[:player_name]
    scissors_answers = ["Computer selected Paper: You Win!", "Computer selected Rock: You Lose!"]
    @scissors_answers = scissors_answers.sample
    erb :scissors
  end

  run! if app_file == $0
end