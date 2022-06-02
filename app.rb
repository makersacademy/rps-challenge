# app.rb

require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' # if development?
require './lib/game.rb'


class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    name = params[:player_1_name]
    $game = Game.new(name)
    @game = $game
    erb(:game)
  end


  run! if app_file ==$0
end