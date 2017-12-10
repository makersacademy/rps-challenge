require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    player_1 = Player.new(params[:p1_name])
    player_2 = session[:p2_name].nil? ? nil : Player.new(params[:p2_name])
    Game.create_new({player_1: player_1,
                     player_2: player_2})
    redirect '/play'
  end

  get '/play' do
    @p1_name, @p2_name = session[:p1_name], session[:p2_name]

    erb(:play)
  end
end
