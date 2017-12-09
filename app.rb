require 'sinatra'

class RPS < Sinatra::Base
  get '/' do
    erb :name_entry
  end

  post '/play' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/result' do
    erb :result
  end

  run! if app_file == $0
end
