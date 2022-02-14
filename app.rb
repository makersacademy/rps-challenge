require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player.rb'
require_relative './lib/game.rb'


class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/sign_in' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  get '/start' do
    erb(:game)
  end

  run! if app_file == $0
end