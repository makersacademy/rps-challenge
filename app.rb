require 'sinatra/base'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/rock' do
    @computer = Computer.new
    @game = Game.new("rock", @computer.randomise_weapon)
    erb :choice
  end

  get '/paper' do
    @computer = Computer.new # could do 'before do 'computer = Computer.new at start'
    @game = Game.new("paper", @computer.randomise_weapon)
    erb :choice
  end

  get '/scissors' do
    @computer = Computer.new
    @game = Game.new("scissors", @computer.randomise_weapon)
    erb :choice
  end

  run! if app_file == $0
end
