require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :welcome
  end

  get '/play' do
    erb :play
  end

  post '/names' do
    redirect '/play'
  end

  post '/choose' do
    redirect '/play'
  end

  run! if app_file == $0
end
