require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    Player.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    Game.new_game(params[:choice])
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

run! if app_file == $0
end
