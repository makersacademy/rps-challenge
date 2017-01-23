require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/printer'

class Rsp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game_starting' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/giu' do
    @game.players[@game.turn].pick = params[:pick].to_sym
    begin
      @game.change_turn
      if @game.players[@game.turn].name == "CPU"
        @game.players[@game.turn].pick = @game.cpu_picker
        redirect '/game_over'
      else
        redirect '/play'
      end
    rescue
      redirect '/game_over'
    end
  end

  get '/game_over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
