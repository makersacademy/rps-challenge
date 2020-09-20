require 'sinatra/base'
#require_relative './lib/player'
#require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    #create player class and have it store players name 
  end
end 