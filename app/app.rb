require 'sinatra'
require 'sinatra/reloader'
require './app/lib/game'
require './app/lib/player'
require './app/lib/computer'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end
  
  post '/result' do
    @player = Player.new(name: params[:name],choice: params[:options])
    @computer = Computer.new
    @game = Game.new(player_class: @player, computer_class: @computer)
    erb @game.result
  end

  run! if app_file == $0
end
