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
    redirect '/attack'
  end

  get '/attack' do
    @turn = Turn.new(session)

    @player_1 = session[:player_1]
    @attack = session[:attack]
    @computer_attack = session[:computer_attack]
    erb :attack
  end

  post '/attack' do
    session[:attack] = params[:attack]
    session[:computer_attack] = Computer.new.attack
    redirect '/attack'
  end

  # post '/attack_rock' do
  #   @player_1 = session[:player_1]
  #   @computer = session[:computer]
  #   @computer.random_attack
  #   erb :attack_rock
  # end

  # post '/attack_paper' do
  #   @player_1 = session[:player_1]
  #   @computer = session[:computer]
  #   @computer.random_attack
  #   erb :attack_paper
  # end


  # post '/attack_scissors' do
  #   @player_1 = session[:player_1]
  #   @computer = session[:computer]
  #   @computer.random_attack
  #   erb :attack_scissors
  # end

  run! if app_file == $0
end