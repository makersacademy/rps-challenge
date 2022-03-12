require 'sinatra/base' 
require 'sinatra/reloader'
require_relative './lib/player.rb'



class BookmarkManager < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/setup' do
    p params
    $player = Player.new(params[:player_name])
    redirect '/game'
  end

  get '/game' do
    player_name = $player.name
    erb(:game)
  end

  run! if app_file == $0
end