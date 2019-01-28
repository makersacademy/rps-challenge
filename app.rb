require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)

    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/rock' do
    @game.player_1.choice = "Rock"
    @result = @game.computer_play

    erb :play
  end

  get '/paper' do
    @game.player_1.choice = "Paper"
    @result = @game.computer_play

    erb :play
  end

  get '/scissors' do
    @game.player_1.choice = "Scissors"
    @result = @game.computer_play
    
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
