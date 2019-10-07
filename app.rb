require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.create(params[:player_name])
    @computer = Computer.create
    @game = Game.create
    redirect '/play'
  end

  get '/play' do
    @player = Player.instance
    @player_name = @player.name
    erb :play
  end

  post '/choice' do
    @player = Player.instance
    @player.weapon(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @player = Player.instance
    @player_name = @player.name
    @player_choice = @player.choice
    @computer = Computer.instance
    @computer_choice = @computer.weapon
    @game = Game.instance
    @game.check_choices(@player_choice, @computer_choice)
    @result = @game.result
    erb :result
  end

  run! if app_file == $0
end
