require 'sinatra/base'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    Player.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

run! if app_file == $0
end
