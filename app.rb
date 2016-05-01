require 'sinatra/base'
require './lib/machine'

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
    erb :play
  end

  post '/weapon' do
    session[:weapon] = params[:weapon]
    redirect '/weapon'
  end

  get '/weapon' do
    @weapon = session[:weapon]
    erb :weapon
  end

  get '/AI' do
    @weapon = session[:weapon]
    @machine_weapon = Machine.new.choose_weapon
    erb :AI
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
