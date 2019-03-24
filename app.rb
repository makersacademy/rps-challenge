require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions
  configure(:development) { set :session_secret, "something" }

  get '/' do
    erb :index
  end

  post '/info' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

end
