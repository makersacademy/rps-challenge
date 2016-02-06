require 'sinatra/base'
require './lib/player.rb'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)

  end

  post '/game' do
    @player_choice = params[:options]
    @player = Player.new(choice:@player_choice)
    erb(:game)
  end
  run! if app_file == $0
end
