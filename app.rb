require 'sinatra/base'
require './lib/computer.rb'
class RPS < Sinatra::Base 
  enable :sessions
  get '/' do
    erb :enter_names
  end
  post '/names' do
    session[:name] = params[:Name]
    redirect '/play'
  end
  get '/play' do
    @name = session[:name]
    @move = session[:move]
    @computer = session[:computer]
    erb :letsplay
  end
  post '/RPS' do
    session[:move] = params[:move]
    computer = Computer.new.rps
    session[:computer] = computer
    redirect '/play'
  end
end
