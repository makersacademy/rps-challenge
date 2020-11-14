require 'sinatra'
require './lib/game'


class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(params[:name])
    redirect '/rps'
  end

  get '/rps' do
    @game = $game
    erb :rps
  end

  get '/rock' do
    @game = $game
    @game.play("rock")
    redirect '/result'
  end

  get '/paper' do
    @game = $game
    @game.play("paper")
    redirect '/result'
  end

  get '/scissors' do
    @game = $game
    @game.play("paper")
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb :result
  end

  run! if app_file == $0
end
