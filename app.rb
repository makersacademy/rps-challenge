require 'sinatra/base'
require './lib/player'
require './lib/weapon'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions
  get "/" do
    erb(:form)
  end

  post '/name' do
    session[:name] = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @name = session[:name].name
    erb(:saved_name)
  end

  post '/player_choice' do
    session[:option] = (session[:name].choice(params[:choices])).weapons
    redirect '/result'
  end

  get '/result' do
    @player = session[:option]
    @generator = (Weapon.new).weapons
    @results = (Game.new).result
    erb(:next)
  end

  run! if app_file == $0
end
