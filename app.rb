require 'sinatra/base'
require 'shotgun'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class MyApp < Sinatra::Base
  get '/' do
    erb(:name_form)
  end

  post '/name' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect '/rps'
    # redirect '/multi'
  end

  # get '/multi' do
  #   erb(:multiplayer)
  # end

  get '/rps' do
    @game = $game
    erb(:rps)
  end

  post '/choice' do
    $game.choice = params[:choice]
    redirect '/winner'
  end

  get '/winner' do
    $game.comp_choose
    $game.determine_outcome
    @game = $game
    erb(:winner)
  end

  run! if app_file == $0
end
