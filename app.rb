require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect('/play')
  end

  get '/play' do
    @name = $game.player.name
    erb(:play)
  end

  post '/check' do
    $game.move(params[:choice])
    $game.cpu_move
    redirect('/result')
  end

  get '/result' do
    @name = $game.player.name
    @choice = $game.player.player_choice
    @cpu_choice = $game.cpu_choice
    @img_link = $game.image_selector(@choice)
    @cpu_img_link = $game.image_selector(@cpu_choice)
    erb(:result)
  end
end
