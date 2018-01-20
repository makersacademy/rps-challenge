require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :start
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    $player
    erb :play
  end

  post '/move' do
    $player.selection(params[:move])
    redirect '/result'
  end

  get '/result' do
    $player
    erb :result
  end

end
