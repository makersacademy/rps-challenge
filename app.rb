require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base


  get '/' do
    erb :index
  end
  post '/names' do
    @name = params[:name]
    erb :lets_play
  end
  # get '/lets_play' do
  #   erb :lets_play
  # end


  run! if app_file == $0
end


# Date.today.strftime('%d %b')
