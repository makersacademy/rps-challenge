require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :session

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = Player.new(params[:name1])
    @name1 = @player1.name
    erb :play
  end

  run! if app_file == $0
end
