require_relative './lib/player.rb'
require 'sinatra/base'
require 'shotgun'

class Rps < Sinatra::Base

  get '/' do 
    "Hello World"
  end

  get '/secret' do 
    "Hello World secret"
  end

  get '/newurl' do 
    "new message"
  end

  run! if app_file == $0

end
