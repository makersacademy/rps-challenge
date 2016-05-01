require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    'Rock, Paper, Scissors'
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:player_1_name])
    @game = Game.start(@player)

    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    @player_choice = params[:player_choice]

    @game.play(@player_choice)

    erb :result
  end

  run! if app_file == $0

end

