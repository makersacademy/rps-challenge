require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/game' 
  end

  get '/game' do
    @player = $player
    erb(:game)
  end

  run! if app_file == $0
end