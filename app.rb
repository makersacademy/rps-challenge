require 'sinatra/base'


class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :names
  end

  # get '/names' do
  #   erb :names
  # end

  get '/play' do
    @player_name = params[:player_name]
    erb :play
  end

  run! if app_file == $0
end
