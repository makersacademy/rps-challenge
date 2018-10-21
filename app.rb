require 'sinatra/base'
require './lib/computer'
require './lib/game'
require './lib/player'


class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

   get '/play' do
   @player_name = session[:player_name]
   @choice = session[:choice]
   @computer_choice = session[:computer_choice]
   erb :play
 end

  post '/play' do
   session[:choice] = params[:choice]
   session[:computer_choice] = :Rock
   # @game.player.choice = params[:choice]
   # @game.computer.choice = Computer.new.rand_choice
   redirect '/play'

 end
 
  run! if app_file == $0

end
