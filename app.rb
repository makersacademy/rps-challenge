require 'sinatra/base'
require_relative 'lib/rps'

class RockPaperScissorsApp < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/enter-name' do
    @@game = RockPaperScissors.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @name = @@game.name
    erb(:play)
  end

  post '/move' do
    @@game.user_move(params[:move])
    @@game.ai_move
    @@game.results
    redirect '/results'
  end

  get '/results' do
    @p1 = @@game.p1
    @p2 = @@game.p2
    @results = @@game.results
    erb(:results)
  end

  run! if app_file == $0
end
