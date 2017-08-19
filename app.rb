require 'sinatra/base'
require 'shotgun'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class MyApp < Sinatra::Base
  get '/' do
    erb(:name_form)
  end

  post '/name' do
    # $name = params[:name]
    # $player = Player.new(params[:name])
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect '/rps'
  end

  get '/rps' do
    # @name = $name
    # @player = $player
    @game = $game
    erb(:rps)
  end

  post '/choice' do
    $game.choice = params[:choice]
    # $choice = params[:choice]
    redirect '/winner'
  end

  get '/winner' do
    @game = $game
    # @choice = $choice
    erb(:winner)
  end

  run! if app_file == $0
end
