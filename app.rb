require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    $game = Game.new(params[:name])
    @name = $game.name
    erb(:play)
  end

  post '/rock' do
    @result = $game.rock
    erb(:result)
  end

  post '/paper' do
    @result = $game.paper
    erb(:result)
  end

  post '/scissors' do
    @result = $game.scissors
    erb(:result)
  end

  get '/replay' do
    @name = $game.name
    erb(:play)
  end

  run! if app_file == $0
end
