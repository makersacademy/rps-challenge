require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    @player1_name = params[:player1_name]
    #@player2_name = params[:player2_name]
    erb :play
  end


  run! if app_file == $0
end