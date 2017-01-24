require 'sinatra/base'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:name)
  end

  post '/name' do
    session[:player_name] = params[:name]
    redirect '/play'
  end


  get '/play' do
    @game = Game.new(session) # session contains the @name, @instrument, @computer_instrument
    erb(:play)
  end
# add a result model
  post '/play' do
    session[:player_instrument] = params[:instrument]
    session[:computer_instrument] = Computer.new.instrument
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
