
require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

get '/' do
  'Hello world!'
end











# start the server if ruby file executed directly
run! if app_file == $0
end
