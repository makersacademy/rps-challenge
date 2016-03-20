require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    @p1 = Player.new(params[:name])
    @p1.weapon=(params[:weapon])
    @p2 = Computer.new
    @p2.weapon
    Game.start(@p1, @p2)
    redirect '/result'
  end

  get '/result' do
    erb Game.current_game.result
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
