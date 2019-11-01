require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end

    post '/enter_names' do
        $player_1 = Player.new(params[:player_1], params[:player_option])
        redirect :play
    end

    get '/play' do
        @player_1_name = $player_1.name
        @player_option = $player_1.option
        erb :play
    end

    post '/rock' do
        @player_option = $player_1.option
        redirect :game
    end

    get '/game' do
        @player_option = $player_1.option
        erb :game
    end

    run! if app_file == $0
end