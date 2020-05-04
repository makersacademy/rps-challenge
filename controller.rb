require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions
  attr_reader :player, :result

  get "/" do
    erb :index
  end

  post '/game' do
    session[:player] = params["player"]
    redirect "/game?name=#{@player}"
  end

  get '/game' do
    @player = session[:player]
    erb :play
  end

  post '/result' do
    @player
    @result = params[:result]
    redirect "/result?name=#{result}name=#{@player}"
  end

  get '/result' do
    @player = session[:player]
    @result = params[:result]
    erb :result
  end
end
