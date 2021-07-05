require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/computer.rb'
require_relative './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect '/players'
  end

  get '/players' do
    @player_1 = session[:player_1]
    erb :player
  end

  post '/start' do
    erb :start
  end

  post '/result' do
    @player = Player.new(session[:player_1], params[:move])
    @computer = Computer.new
    @game = Game.new(@player, @computer)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
