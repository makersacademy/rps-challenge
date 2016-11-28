require 'sinatra/base'
require './lib/game.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/intro' do
    #erb(:play)
    p params
    $game = Game.new(params[:player_1_name])
    redirect '/intro'
  end

  get '/intro' do
    #$player_1_name
    erb(:intro)
  end

  get '/play' do
    erb(:play)
  end

  post '/results' do
    p params
    $game.select(params[:selection])
    redirect '/results'
  end

  get '/results' do
    erb(:results)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
