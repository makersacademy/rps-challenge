require 'sinatra/base'
require 'shotgun'
require_relative './lib/player.rb'

class Rps < Sinatra::Base

  get '/' do
  erb(:index)
  end

  post '/name' do
  $player = Player.new(params[:name])
  redirect '/play'
  end

  get '/play' do
  @name = $player.name
  erb(:game)
  end

  post '/choice' do
  $player.choose(params[:choice])
  end

  run! if app_file == $0
end
