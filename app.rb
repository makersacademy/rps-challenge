require 'sinatra/base'
require 'sinatra'

set :public_folder, File.dirname(__FILE__)

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/game' do
    erb :game
  end

end
