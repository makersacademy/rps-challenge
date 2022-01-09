require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do 
    @player = $player
    erb :play
  end

  post '/name' do
    $player = params['name']
    redirect '/play'
  end

  run if app_file == $0
end