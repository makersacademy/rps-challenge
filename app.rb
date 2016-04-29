
require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
      erb :index
    end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    Game.create(player_1)
    redirect '/play'
  end

  before {@game = Game.game_in_play}

  get '/play' do
    erb :play
  end

  post '/result' do
    @result_1 = params[:type].to_sym
    @result_2 = @game.computer_draw
    @winning_type = @game.play(@result_1,@result_2)
    if @result_1 == @winning_type
      @winner = player_1
    elsif @result_2 == @winning_type
      @winner = computer
    end
  end

  get '/result' do
    erb :result
  end

  # get '/game-over' do
  #   erb :game_over
  # end
  # start the server if ruby files executed directly
  run! if app_file == $0
end
