require 'sinatra/base'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:name)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @instrument = session[:instrument]
    @computer_instrument = session[:computer_instrument]
    erb(:play)
  end

  post '/play' do

    session[:instrument] = params[:instrument]
    session[:computer_instrument] = Computer.new.instrument
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
