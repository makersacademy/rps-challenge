require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base
  set :sessions, true

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:name_1]), Player.new(params[:name_2]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.object
    erb :play
  end

  post '/selection' do
    @game = Game.object
    @game.switch
    redirect '/play'
  end

end
