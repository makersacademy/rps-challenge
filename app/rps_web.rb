require 'sinatra/base'
require_relative '../lib/player.rb'

class RPSWeb < Sinatra::Base 
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:user_name] = params[:name]
    # player = Player.new(params[:name])
    redirect '/choose'
  end

  get '/choose' do
    @player_name = session[:user_name]
    erb :choose
  end

  post '/choose' do
    redirect '/choose'
  end

end
