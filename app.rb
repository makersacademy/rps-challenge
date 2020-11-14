require 'sinatra'
require './lib/game'


class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(params[:name])
    redirect '/rps'
  end

  get '/rps' do
    erb :rps
  end

  get '/rock' do
    @game.play("rock")
    redirect '/result'
  end

  get '/paper' do
    @game.play("paper")
    redirect '/result'
  end

  get '/scissors' do
    @game.play("paper")
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
