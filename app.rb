require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player.rb'

class Rps < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    $player_name = params[:name]
    redirect '/play'                            
  end

  get '/play' do
    erb :play
  end

  post '/weapon' do
    $player_weapon = params[:weapon]
    redirect '/choice'
  end

  get '/choice' do
    erb :choice
  end

  run if app_file ==$0
end
