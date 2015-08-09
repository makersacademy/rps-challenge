require 'sinatra/base'
require_relative 'random_weapon_generator'

class RpsWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/game_page' do
    erb :game_page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
