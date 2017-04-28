require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/computer'

class RPS < Sinatra::Application

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.create(params[:name])
    redirect to('/play')
  end

  get '/play' do
    @player = Player.instance
    @name = @player.name
    erb :play
  end

  post '/game' do
    @player = Player.instance
    @player.weapon = params[:weapon]
    computer = Computer.new
    @game = Game.create(params[:weapon].to_sym, computer.weapon)
    redirect to('/result')
  end

  get '/result' do
    @game = Game.instance
    erb @game.result
  end

end
