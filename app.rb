require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home_page
  end

  post '/choose' do
    @current_game = Game.create(params[:Player])
    erb :choose
  end

  post '/result' do
    @current_game = Game.instance
    erb :result
  end

  run! if app_file == $0
end
