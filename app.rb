require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/computer'
require_relative 'lib/game'
require_relative 'lib/player'

class Game < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/result' do
    erb :result
    redirect to '/result'
  end

  get '/result' do
    erb :result
  end

end