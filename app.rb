require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base


    get '/' do
      erb :index
    end


    post '/names' do
      player_1 = Player.new(params[:player_1_name])
      player_2 = Player.new(params[:player_2_name])
      Game.create(player_1, player_2)
      redirect '/play'
      # automate = params[:player2_name].empty?
      # @game = Game.create(player1, player2, automate)

    end

    get '/play' do
      @game = Game.instance
      erb :play
    end

    # start the server if ruby file executed directly
    run! if app_file == $0
  end
