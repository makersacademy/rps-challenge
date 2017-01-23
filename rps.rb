require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/rock' do
    @player_choice = Player.new(params[:rock])
    @computer_choice = Computer.new
    @game = Game.start_game(@player_choice,@computer_choice)
    redirect '/game'
  end
  post '/paper' do
    @player_choice = Player.new(params[:paper])
    @computer_choice = Computer.new
    @game = Game.start_game(@player_choice,@computer_choice)
    redirect '/game'
  end
  post '/scissors' do
    @player_choice = Player.new(params[:scissors])
    @computer_choice = Computer.new
    @game = Game.start_game(@player_choice,@computer_choice)
    redirect '/game'
  end

  get '/game' do
    @player = session[:player]
    @game = Game.current_game
    @player_choice = @game.player.choice
    erb @game.result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
