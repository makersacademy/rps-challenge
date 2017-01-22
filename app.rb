require 'sinatra/base'
require 'sinatra'
require 'google-webfonts'

require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/name' do
    params[:player_name] = "Anon" if params[:player_name].empty?
    player = Player.new(params[:player_name])
    @game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/choice' do
    if params.empty?
      redirect '/error'
    else
      @game = Game.instance
      @game.place_moves(params[:choice])
      redirect '/result'
    end
  end

  get '/error' do
    @game = Game.instance
    erb(:error)
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end

  run! if app_file == $0

end
