require 'sinatra'
require './lib/player'
require './lib/game'
require './lib/computer'
class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/rock' do
    redirect '/rock'
  end
  get '/rock' do
    @computer_move = Computer.new.random_choice
    erb :rock
  end
  post '/paper' do
    redirect '/paper'
  end
  get '/paper' do
    @computer_move = Computer.new.random_choice
    erb :paper
  end
  post '/scissors' do
    redirect '/scissors'
  end
  get '/scissors' do
    @computer_move = Computer.new.random_choice
    erb :scissors
  end

end
