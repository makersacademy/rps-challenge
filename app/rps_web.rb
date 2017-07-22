require 'sinatra/base'
require './lib/computer'
require './lib/game'
require './lib/player'

class RPSweb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

end
