require 'sinatra/base'
require 'shotgun'
require_relative 'lib/player.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player])
    redirect '/play_screen'
  end

  get '/play_screen' do
    erb(:play_screen)
  end

end
