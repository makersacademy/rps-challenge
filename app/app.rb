require 'sinatra'
require '../lib/computer'
# require_relative '../lib/computer.rb'
class RPS < Sinatra::Base
enable :sessions
  
  get '/' do
    session[:computer] = Computer.new
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  post '/game' do
    @computer_choice = session[:computer]
    @name = session[:name]
    @choice = params[:choice] 
    erb :game
  end

# This will start a server automatically if the ruby 
# file is executed directly
  run! if app_file == $0
end