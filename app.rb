require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/players' do
    @players = params[:players]
    session[:players] = @players.to_i
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
