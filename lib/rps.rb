require 'sinatra/base'
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

  post '/name' do
    session[:player_name]=params[:player_name]
    computer_attack = Computer.new.attack
    @game = Game.create(computer_attack)
    redirect to("/play")
  end

  get '/play' do
    @player = session[:player_name]
    erb :play
  end

  post '/result' do
    player_choice = params[:choice].to_sym
    erb(@game.result(player_choice))
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
