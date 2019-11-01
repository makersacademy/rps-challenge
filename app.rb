require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end

    post '/enter_names' do
        $player_1 = Player.new(params[:player_1])
        redirect :play
    end

    get '/play' do
        @player_1_name = $player_1.name
        erb :play
    end

    run! if app_file == $0
end