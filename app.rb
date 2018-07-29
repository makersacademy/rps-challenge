require 'sinatra/base'
require './lib/pc'
 
class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    # "Let's play RPS!"
    erb :index
  end

  post '/register' do # register name
    session[:player] = params[:player]
    redirect '/play'
  end
   
  get '/play' do # return name
    @player = session[:player]
    erb :play
  end

  post '/result' do
    session[:move] = params[:move]
    redirect '/result'
  end
   
  get '/result' do
    @move = session[:move]
    $computer = Computer.new
    erb :results
  end
   
  run! if app_file == $0
end
