require 'sinatra/base'
require 'sinatra'
require './lib/player.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player_name = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name.name
    erb(:play)
  end

  post '/move' do
    $results = $player_name.play_rps(params[:move])
    redirect '/results'
  end

  get '/results' do
    @results = $results
    erb(:results)
  end

  run! if app_file == $0

end
