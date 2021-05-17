require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

enable :sessions

  get '/' do
    erb :index
  end

  post '/player' do
    session[:name] = params[:name]
    @player = Player.new(session[:name])
    erb :player_pick
  end

  post '/result' do
    session[:player_pick] = params[:player_pick]
    @player_pick = session[:player_pick].to_sym
    @game = Game.new(@player_pick)
    erb :result
  end

  run! if app_file == $0
end
