require 'sinatra/base'
require_relative "./lib/player"

class Rps < Sinatra::Base

  enable :sessions

  before do
    @player_1 = session[:player_1]
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1] = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0

end
