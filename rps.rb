require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base
  set :sessions, true

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name_1] = params[:name_1]
    session[:name_2] = params[:name_2]
    redirect '/play'
  end

  get '/play' do
    @game = Game.create(Player.new(session[:name_1]), Player.new(session[:name_2]))
    erb :play
  end

  post '/selection' do
    p params[:selection]
    "You made a choice"
    redirect '/play'
  end

end
