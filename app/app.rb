require 'sinatra'
require 'sinatra/reloader'
require './app/lib/game.rb'
require './app/lib/player.rb'
require './app/lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end
  
  post '/result' do
    @player = Player.new(name: params[:name],selected: params[:options])
    @computer = Computer.new.selected
    @game = Game.new(player_class: @player, computer: @computer)
    erb @game.result
  end

  run! if app_file == $0
end
