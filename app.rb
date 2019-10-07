require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player_name]), Player.new('Computer'))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/option' do
    @game.player.move(params[:option].downcase.to_sym)
    redirect '/result'
  end

  get '/result' do
    erb :result
  end
end
