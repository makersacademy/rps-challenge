require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player_name = params[:name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    redirect '/outcome'
  end

  get '/outcome' do 
    "Player chooses Paper"
  end
end