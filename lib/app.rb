require 'sinatra/base'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end
end
