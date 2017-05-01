require_relative './lib/player.rb'
require 'sinatra/base'
require 'shotgun'

class Rps < Sinatra::Base

  get '/' do 
    "Home Page"
  end

  get '/game' do 
    "game page"
  end

  get '/result' do 
    "result page"
  end

  run! if app_file == $0

end
