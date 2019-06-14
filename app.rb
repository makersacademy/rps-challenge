require 'sinatra/base'
require './lib/selection.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  post '/game' do
    selection = Selection.new
    session[:rock] = selection.user_input(params[:rock])
    session[:paper] = selection.user_input(params[:paper])
    session[:scissor] = selection.user_input(params[:scissor])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @user_input = [session[:rock],session[:paper],session[:scissor]].join
    erb(:play)
  end

  run! if app_file == $0
end