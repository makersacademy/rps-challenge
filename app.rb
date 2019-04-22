require 'sinatra/base'
require 'game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @game = Game.new(session[:choice])
    erb :result
  end

end
