require 'sinatra/base'
#require_relative './lib/RPS.rb'

class Game < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index # this erb file contains the html stuff
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/options' do
    erb :options
  end

  get '/options' do
    session[:option] = params[:option]
    redirect '/options'
  end

  get '/confirm_option' do
    erb :confirm_option
  end

  # get '/confirm_option' do
  #   erb :confirm_paper
  # end

  # get '/confirm_paper' do
  #   erb :confirm_paper
  # end
  run! if app_file == $0
end
