require 'sinatra/base'

class RPS < Sinatra::Base
  configure do
    enable :sessions
  end


  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    @shape = session[:shape]
    @computer_shape = session[:computer_shape]
    erb :game
  end

  post '/game' do
    session[:shape] = params[:shape]
    session[:computer_shape] = :rock
    redirect '/game'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
