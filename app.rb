require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/single_name' do
    erb :single_name
  end

  post '/sp_game' do
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/end' do
    erb :end
  end

  post '/move' do
    redirect '/end'
  end
  run! if app_file == $0
end
