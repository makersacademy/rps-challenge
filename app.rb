require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.current
  end

  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    @player_name = session[:name]
    Game.create(@player_name)
    redirect('/play')
  end

  get '/play' do
    erb :name
  end

  post '/result' do
    session[:choose] = params[:choose]
    @choose = session[:choose]
    "Reena choose #{@choose}"
  end

  run! if app_file == $0
end
