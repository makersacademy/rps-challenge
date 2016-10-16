require 'sinatra/base'
require_relative 'lib/player'

class CSB < Sinatra::Base

  enable :sessions

  before do
    @player = Player.read
    @ash = Player.read
  end

  get '/' do
    erb :index
  end

  post '/setup' do
    @player = Player.create(params[:player_name])
    @ash = Player.new("Ash")
    p @player.name
    redirect '/play'
  end

  get '/play' do
    p @player.name
    erb :play
  end

  post '/input' do
    p @player.name
    if    params[:charmander]
       @player.pokemon = params[:charmander]
    elsif params[:squirtle]
       @player.pokemon = params[:squirtle]
    elsif params[:bulbasaur]
       @player.pokemon = params[:bulbasaur]
    end
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
