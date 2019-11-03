require 'sinatra/base'
require_relative 'lib/player'

class Rps < Sinatra::Base

  enable :session

  get "/" do
    erb :index
  end

  post "/play" do
    @player = params[:player]
    erb :play
  end

  run! if app_file == $0
end
