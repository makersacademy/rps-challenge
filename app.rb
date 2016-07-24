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
    session[:user_attack_choice] = params[:user_attack_choice]
    session[:computer_attack_choice] = Computer.new.random_attack
    redirect '/result'
  end

  get '/result' do
    @user_attack_choice = session[:user_attack_choice]
    @computer_attack_choice = session[:computer_attack_choice]
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
