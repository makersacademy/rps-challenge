require 'sinatra/base'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:form)
  end

  post '/players' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/compmove' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @comp = Computer.new
    @move = session[:move]
    erb(:result)
  end
end
