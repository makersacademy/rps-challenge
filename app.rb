require 'sinatra/base'
require './lib/game'
# app file for Rock Paper Scizors game
class RSPgame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    
    erb(:name)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end
end
