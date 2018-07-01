require 'sinatra/base'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/result' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @choice = session[:choice]
    $computer = Computer.new
    erb :result
  end




  run! if app_file == $0
end
