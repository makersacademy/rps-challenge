require 'sinatra/base'
require_relative './lib/player'

class App < Sinatra::Base
  set :sessions, true

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player ||= Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    params[:choice]
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end
end
