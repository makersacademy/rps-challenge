require "sinatra/base"
require "sinatra/reloader"
require "./lib/player.rb"

class RPS < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end

    get '/' do
        erb :index
    end

    post '/names' do
        $player_1 = Player.new(params[:player_1])           #This is a problem
        # $player_2 = Player.new(params[:player_2])
        redirect '/play'
    end
    
    get '/play' do
        @player_1 = $player_1#.name
        # @player_2 = $player_2#.name
        erb :play
    end

    run! if app_file == $0
end