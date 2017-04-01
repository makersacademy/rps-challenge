require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  set :sessions, true
  enable :sessions
  set :public_folder, File.dirname(__FILE__) + '/'

  get '/' do
    erb :index
  end

  post '/initiate' do
    
  end

  get '/play' do


  end

end
