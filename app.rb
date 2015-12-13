require 'sinatra/base'
require './lib/rps.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/game' do
    $game = Game.new(params[:player_1])
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
