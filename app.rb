require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post 'sign_in_player' do
  end

  run! if app_file == $0
  
end
