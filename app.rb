require 'sinatra/base'
require_relative './lib/player.rb'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/game_page'
  end

  get '/game_page' do
    @name = $player.name
    p @name
    erb(:game_page)
  end

  run! if app_file == $0
end
