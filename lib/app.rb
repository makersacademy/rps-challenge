require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    p params
    erb :homepage
  end

  post '/enter-name' do
    p params
    erb :enter_name
  end

  post '/play' do
    @game =
    Game.add(Player.new(params[:player_1_name]))
    erb :play
  end

  post '/result' do
    erb :result
  end

  run! if app_file == $0
end
