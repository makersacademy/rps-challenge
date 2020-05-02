require 'sinatra/base'

class Game < Sinatra::Base
  attr_reader :player, :result
  enable :sessions

  get "/" do
    erb :index
  end

  post '/game' do
    @player = params["player"]
    redirect "/game?name=#{@player}"
  end

  get '/game' do
    @player = params["player"]
    erb :play
  end

  post '/result' do
    @player = params["player"]
    @result = params[:result]
    redirect "/result?name=#{result}name=#{@player}"
  end

  get '/result' do
    @player = params[:player]
    @result = params[:result]
    erb :result
  end
end
