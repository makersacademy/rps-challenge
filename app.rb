require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    redirect '/outcome'
  end

  get '/outcome' do 
    erb :outcome
  end
end