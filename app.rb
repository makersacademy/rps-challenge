require 'sinatra/base'
require './lib/player'


class RPS < Sinatra::Base
  set :sessions, true
  enable :sessions


  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1_name]
    session[:computer] = Player.new("computer")
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]

    erb :play
  end

  post '/attack_rock' do
    @player_1 = session[:player_1]
    @computer = session[:computer]
    @computer.random_attack
    erb :attack_rock
  end

  post '/attack_paper' do
    @player_1 = session[:player_1]
    @computer = session[:computer]
    @computer.random_attack
    erb :attack_paper
  end


  post '/attack_scissors' do
    @player_1 = session[:player_1]
    @computer = session[:computer]
    @computer.random_attack
    erb :attack_scissors
  end
end