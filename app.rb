require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    
    erb :index

  end

  post '/names' do
    p @player_name = params[:player_name]
  end


end