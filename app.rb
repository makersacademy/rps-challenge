require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/computer'

class Rps < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/name' do
    erb(:name)
  end

  post '/name' do
    @game.player_1 = Player.new(params[:name])
    @game.player_2 = Computer.new

    redirect('/game')
  end
end
