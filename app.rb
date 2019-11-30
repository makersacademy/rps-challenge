require "sinatra/base"
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :name_form
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/choice'
  end

  get '/choice' do
    $game = Game.new($player.name)
    @name = $player.name
    erb :choice
  end

  post '/player_choice' do
    $choice = params[:choice]
    redirect '/game'
  end

  get '/game' do
    @name = $player.name
    @choice = $choice
    @bot_choice = ['Rock', 'Paper', 'Scissors'].sample
    @outcome = $game.outcome($choice, @bot_choice)
    erb :game
  end

  run! if app_file == $0

end
