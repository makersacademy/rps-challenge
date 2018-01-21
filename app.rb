require 'sinatra/base'
# require './lib/player'
# require './lib/game'
# require 'pry'

class RPSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $name = params[:player]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get 'result' do

  end

run! if app_file == $0

end
