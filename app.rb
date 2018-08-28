require 'sinatra/base'
require './lib/game.rb'
require './lib/calculator.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/selection' do
    @game = $game
    p params
    @game.selection(params[:choice])
    redirect '/results'
  end
    
  get '/results' do
    @game = $game
    erb :results
  end

end