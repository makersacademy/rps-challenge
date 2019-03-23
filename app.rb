require 'sinatra/base'
require 'sinatra/reloader'
require './lib/rps'
require './lib/player'


class Game < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    player1 = Player.new(params[:name])
    @game = RPS.create(player1)
    erb :play
  end

  get '/play' do
    @game = RPS.instance 
    erb :play
  end

  post '/result' do
    @game = RPS.instance 
    @game.player1.choice(params[:result])
    erb :result
  end

end
