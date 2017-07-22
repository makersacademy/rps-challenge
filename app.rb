require 'sinatra'
require './lib/player'
class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/selection' do
    @player = Player.new(params[:player_name])
    @player_name = @player.name
    @selection = params[:selection]
    erb :selection
  end

  get '/selection' do
    erb :selection
  end

  run! if app_file == $0
end
