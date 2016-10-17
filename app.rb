require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/game_sc'
require './lib/game_pap'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name-lit' do
    @player = Player.new(params[:marketeer_name])
    erb(:lit_play)
  end

  get '/result-rock' do
    erb(:rock_results)
  end

  get '/result-scissors' do
    erb(:scissors_results)
  end

  get '/result-paper' do
    erb(:paper_results)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
