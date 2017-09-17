require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = Player.instance
    erb :play
  end

  post '/attack' do
    @computer = Player.new
    @computer_attack = @computer.random_attack
    @player = Player.instance
    @attack = params[:attack]
    erb :attack
  end
end
