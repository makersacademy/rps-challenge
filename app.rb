require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

  class RPS < Sinatra::Base
    enable :sessions

    before do
      @game = Game.instance
    end

    get '/' do
      erb :index
    end

    post '/names' do
      computer = Computer.new
      player_1 = Player.new(params[:player_1_name])
      @game = Game.create(player_1,computer)
      redirect '/play'
    end

    get '/play' do
      erb :play
    end

    post '/result' do
      session[:move] = params[:move]
      redirect '/result'
    end

    get '/result' do
      @player_move = session[:move]
      @computer_move = @game.computer.move
      @result = @game.play(@player_move,@computer_move)
      erb :result
    end

  !run if app_file == $0
end
