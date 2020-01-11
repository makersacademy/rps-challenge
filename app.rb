require 'sinatra/base'
require './lib/rpsgame'
require './lib/player'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  run! if app_file == $0
end
