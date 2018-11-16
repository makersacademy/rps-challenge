require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/save_name' do
    Game.start(params[:name_1], params[:name_2])
    redirect '/play'
  end

  get '/saved_name' do
    erb :saved_name
  end

  get '/play' do
    erb :play
  end

  get '/result' do
    erb :result
  end

  post '/result' do
    Game.play_a_round params[:move]
    redirect '/result'
  end
end
