require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
enable :sessions
  # before do
  #    @game = Game.instance
  #  end

  get '/' do
    erb(:start_screen)
  end

  post '/names' do
    session[:player] = params[:players_name]
    redirect '/play'
    # player = Player.new(params[:players_name])
    # @game = Game.create(player)
    #  redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    # @player = @game.player.name
    erb(:play)
  end

  post '/play' do
    session[:player_choice] = params[:choice].to_sym
    session[:computer_choice] = Computer.new.choice
    # @game.choice(params[:choice])
    redirect '/result'
  end

  get '/result' do

    redirect '/play'
    # erb(:result)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
