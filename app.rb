require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/save_name' do
    Game.start(params[:name_1], params[:name_2])
    redirect Game.next_page
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    Game.record_move params[:move]
    redirect Game.next_page
  end

  get '/result' do
    erb :result
  end

  get '/restart' do
    Game.begin_round
    redirect Game.next_page
  end
end
