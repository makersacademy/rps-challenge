require 'sinatra'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :name_form
  end

  post '/play' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/rps'
  end

  get '/rps' do
    erb :rps
  end

end
