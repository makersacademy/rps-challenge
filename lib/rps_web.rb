require 'sinatra/base'
require './lib/game'
require './lib/computer'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  post '/' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    session[:name]
    erb :game
  end

  post '/game' do
    session[:object] = params[:object].to_sym
    redirect '/result'
  end

  get'/result' do
    game = Game.new
    player = Player.new
    computer = Computer.new
    player.choose(session[:object])
    session[:winner] = game.play(player, computer)
    erb :result
  end
  run! if app_file == RPS
end
