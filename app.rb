require 'sinatra/base'
require './lib/computer.rb'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/attack' do
    session[:user_attack] = params[:user_attack]
    session[:computer_attack] = Computer.new.random_attack
    redirect '/result'
  end

  get '/result' do
    @user_attack = session[:user_attack]
    @computer_attack = session[:computer_attack]
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
