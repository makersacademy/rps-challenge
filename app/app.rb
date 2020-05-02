require 'sinatra/base'
require_relative '../lib/computer'

class MyRockApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/user' do
    session[:name] = params[:name]
    redirect '/play'
  end
  
  post '/game' do
    session[:rps] = params[:rps]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @rps = session[:rps]
    @computer = Computer.new
    erb :play
  end

end