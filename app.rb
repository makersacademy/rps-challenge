require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, "something secret"

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    session[:game] = Game.new(Player.new(params[:name]))
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    @move = @game.player.moves[-1]
    @name = @game.player.name
    @cp_move = @game.cp_moves[-1]

    erb(:play)
  end

  post '/move' do
    @game = session[:game]
    @game.player.move(params.values[0])
    @game.cp_move

    redirect '/play'
  end

  run! if app_file == $0
end
