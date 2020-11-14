require 'sinatra'
require './lib/game'


class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :players
  end

  get '/index' do
    erb :index
  end

  get '/index2' do
    erb :indexs
  end

  post '/name' do
    @game = Game.create(params[:name])

    redirect '/rps'
  end

  post '/name2' do
    @game = Game.create(params[:name], params[:name2])

    redirect '/rps2'
  end


  get '/rps' do
    erb :rps
  end

  get '/rps2' do
    erb :rpss
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
