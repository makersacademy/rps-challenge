require 'sinatra/base'
require './lib/rps.rb'
require './lib/pvp.rb'

class Game < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/1player' do
    erb(:singlePlay)
  end

  get '/2player' do
    erb(:multiPlay)
  end

  post '/multiplayer' do
    $game = PvP.new(params[:player_1], params[:player_2])
    @game = $game
    erb(:multiplayer)
  end

  post '/result' do
    @game = $game
    @game.evaluate(params[:p1choose], params[:p2choose])
    erb(:result)
  end

  get '/game' do
    $game = RPS.new(params[:player_1])
    @game = $game
    erb(:game)
  end

  get '/rock' do
    @game = $game
    @game.compute
    @game.rock
    redirect '/outcome'
  end

  get '/paper' do
    @game = $game
    @game.compute
    @game.paper
    redirect '/outcome'
  end

  get '/scissors' do
    @game = $game
    @game.compute
    @game.scissors
    redirect '/outcome'
  end

  get '/outcome' do
    @game = $game
    erb(:outcome)
  end

  run! if app_file == $0
end
