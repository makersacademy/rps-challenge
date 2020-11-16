require 'sinatra/base'
require './lib/rps'

class RPS < Sinatra::Base
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
    @choice = session[:choice]
    @cpu_choice = session[:cpu_choice]
    @result = session[:result]
    erb :play
  end

  post '/play' do 
    round = Rps.new
    session[:choice] = params[:choice]
    session[:cpu_choice] = round.cpu_choice
    session[:result] = round.compare(session[:choice], session[:cpu_choice])
    redirect '/play'
  end
   
  # start the server if ruby file executed directly
  run! if app_file == $0
end