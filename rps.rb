require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/player' do
    player = Player.new(params[:name])
    "welcome #{player.name}"
  end

  run! if app_file == $0
  end
