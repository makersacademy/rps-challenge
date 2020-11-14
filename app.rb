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

  post '/player1' do
    @game.p1_turn(params[:player1])
    redirect '/player2'
  end

  get '/player2' do
    erb :anotherturn
  end

  post '/games' do
    p params[:player2]
    p @game.p1_go[-1]
    @game.play(@game.p1_go[-1], params[:player2])
    redirect '/results'
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

  get '/results' do
    erb :results
  end

  run! if app_file == $0
end
