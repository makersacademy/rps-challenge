require 'sinatra'

class RPS < Sinatra::Base
  get '/' do
    erb :name_entry
  end

  post '/play' do
    @player_name = params[:player_name]
    erb :game
  end

  post '/result' do
    'Rock vs'
  end

  run! if app_file == $0
end
