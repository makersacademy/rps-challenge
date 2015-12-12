require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    $game = Game.new( Player.new(params[:player_1]), ComputerPlayer.new)
    redirect :play
  end

  get '/play' do
    game
    erb :play
  end

  post '/rock' do
    game.rock
    redirect :choice
  end

  post '/paper' do
    game.paper
    redirect :choice
  end

  post '/scissors' do
    game.scissors
    redirect :choice
  end

  get '/choice' do
    game
    erb :choice
  end

  get '/outcome' do
    game
    erb :outcome
  end

  helpers do
    def game
      @game ||= $game
    end
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
