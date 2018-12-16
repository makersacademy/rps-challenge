require 'sinatra/base'
require_relative './player.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    $player = Player.new(params[:player_name], params[:weapon])
    redirect 'result'
  end

  get '/result' do
    @player_name = $player.name
    @weapon = $player.weapon
    erb(:result)
  end

  run! if app_file == $0

end
