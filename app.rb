require 'sinatra/base'
require './lib/computer.rb'
require './lib/player.rb'
require './lib/game.rb'
class Rps < Sinatra::Base
  enable :sessions
  configure(:development) { set :session_secret, "something" }
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session[:player_name], Computer.new)
    @game.player.move(params[:move])
    @computer_move = @game.computer.choice
    erb(:play)
  end

  run! if app_file == $PROGRAM_NAME
end
