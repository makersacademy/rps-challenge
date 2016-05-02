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
    begin
      @player = Player.new(params[:player_1_name])
      @game = Game.start(@player)

      redirect '/play'
    rescue => error
      @message = error.message
      erb :index
    end
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    @game.play(params[:player_choice])

    erb :result
  end

  run! if app_file == $PROGRAM_NAME

end

