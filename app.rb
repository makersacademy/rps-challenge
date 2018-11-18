require "sinatra/base"
require "capybara"
require "./lib/game"

class Rps_App < Sinatra::Base

  enable :sessions

  get '/' do
    erb :home
  end

  post '/data' do
    @RPSgame = Game.create(params[:player_name],params[:player_move])
    redirect '/arena'
  end

  get '/arena' do
    @RPSgame = Game.instance
    erb :arena
  end

  run! if app_file == $0

end
