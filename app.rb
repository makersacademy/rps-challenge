require 'sinatra/base'
require_relative 'lib/game.rb'

class Rps < Sinatra::Base

  enable :sessions
  
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/match' do
    @game.player.choose(params[:choice])
    @game.computer.computer_selection
    redirect '/result'
  end

  get '/result' do
    @player_choice = session[:player_choice]
    @comp_choice = session[:comp_choice]
    erb(:result)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
