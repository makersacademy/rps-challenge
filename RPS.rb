require 'sinatra'
require_relative 'lib/player.rb'

class RPS < Sinatra::Base

attr_reader :selection

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_name = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name.player_name
    erb :play
  end

  post '/battle' do
    @player_name = $player_name.player_name
    @selection = params[:selection]
    redirect '/throwdown'
  end

  get '/throwdown' do
    @player_name = $player_name.player_name
    @selection = params[:selection] #forced need to set this to :selection
    erb :throwdown
  end

  run! if app_file == $0
end
