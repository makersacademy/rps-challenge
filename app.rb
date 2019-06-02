require 'sinatra/base'
require './lib/player.rb'

class RPG < Sinatra::Base
  enable :sessions
    get '/' do
      erb :index
    end

    post '/name' do
      $player_1 = Player.new(params[:first_name])
      redirect '/play'
    end

    get '/play' do
      @first_name = $player_1.name
      erb :play
    end

    get '/Scissors' do
      erb :scissors
    end

    run! if app_file == $0

end
