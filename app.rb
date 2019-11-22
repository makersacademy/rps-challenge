# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base
  configure :development, :test do
    register Sinatra::Reloader
  end

  get '/feature_test_env' do
    erb :feature_test_env
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1_name = params['player_1_name']
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name
    erb :play
  end
end
