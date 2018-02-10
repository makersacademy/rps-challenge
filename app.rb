require 'sinatra/base'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/battle'
  end

  get '/battle' do
    @player = session[:player]
    @choice = session[:choice]
    @computer = Computer.new
    erb :battle
  end

  run! if app_file == $0
end
