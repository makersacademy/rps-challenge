require 'sinatra/base'
require_relative 'lib/randomizer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/welcome' do
    session[:name] = params[:name]
    @name = session[:name]
    erb(:welcome)
  end

  post '/play' do
    @name = session[:name]
    @move = params[:move]
    @computer_move = Randomizer.new.move
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
