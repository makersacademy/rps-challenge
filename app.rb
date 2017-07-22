require 'sinatra/base'

class RPS < Sinatra::Base

  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    "#{params[:player_1_name]} vs. the computer"
    # redirect'/play'
  end

  get '/play' do
    erb :play
  end
end
