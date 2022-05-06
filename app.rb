require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/computer'
require_relative 'lib/play'
require_relative 'lib/player'

class Game < Sinatra::Base
  
  get '/' do
    # create player
    erb :index
  end

  post '/game' do
    # erb :result
    redirect to '/result'
  end

  get '/result' do
    erb :result
  end

end