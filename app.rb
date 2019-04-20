require 'sinatra/base'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @computer = Computer.new
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @name = (params[:player_name])
    session[:player_name] = @name
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/rock' do
    @game = Game.new("rock", @computer.randomise_weapon)
    erb :choice
  end

  get '/paper' do
    @game = Game.new("paper", @computer.randomise_weapon)
    erb :choice

  end

  get '/scissors' do
    @game = Game.new("scissors", @computer.randomise_weapon)
    erb :choice

  end

  run! if app_file == $0
end
