require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/infrastructure' do
    '<p>Infrastructure working!</p>'
  end

  post '/name' do
    Game.create(Player.new(params[:player]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    Game.instance.decision(params[:choice])
    redirect '/game_over'
  end

  get '/game_over' do
    erb :game_over
  end
end
