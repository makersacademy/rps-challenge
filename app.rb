require 'sinatra/base'
require_relative './lib/computer'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/choose'
  end

  get '/choose' do
    @name = session[:player_name]
    erb(:choose)
  end

  post '/choose' do
    session[:user_choice] = params[:user_choice]
    redirect '/outcome'
  end

  get '/outcome' do
    @random_choice = Computer.new.choice

    @user_choice = session[:user_choice]
    erb(:outcome)
  end

  run! if app_file == $0
end
