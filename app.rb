require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload './lib/game.rb'
  end

  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do 
    @game = Game.instance
    erb :play
  end

  get '/result' do
    @game = Game.instance
    erb :result
  end

  post '/name' do
    @game = Game.create(params['name'])
    redirect '/play'
  end

  post '/rock' do
    selection = 'Rock'
    @game = Game.instance
    @game.player_selection(selection)
    redirect '/result'
  end

  post '/paper' do
    selection = 'Paper'
    @game = Game.instance
    @game.player_selection(selection)
    redirect '/result'
  end

  post '/scissors' do
    selection = 'Scissors'
    @game = Game.instance
    @game.player_selection(selection)
    redirect '/result'
  end

  run if app_file == $0
end