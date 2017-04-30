require 'sinatra/base'
require_relative './lib/singleplayer'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/single_player' do
    erb :single_player_name
  end

end
