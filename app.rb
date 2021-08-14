require_relative 'lib/rps'
require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base

  configure:development do 
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/welcome' do
    $name = Play.new(params[:player])
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  get '/victory' do
  end

  get '/defeat' do

  end


  run! if app_file == $0
end