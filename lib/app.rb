require 'sinatra'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'
require './lib/computer'


class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end
  
  post '/result' do
    @player = Player.new(name: params[:name],selected: params[:options])
    @computer = Computer.new.selected
    @game = Game.new(player_class: @player, computer: @computer)
    @result = @game.winner
    erb(:result)
  end

  run! if app_file == $0
end
