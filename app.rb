require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end
  # our routes would go here

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end