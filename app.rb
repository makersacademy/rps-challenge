require 'sinatra/base'
require './lib/player'
require './lib/cpu'

class RockPaperScissors < Sinatra::Base
    enable :sessions

    get '/' do
        erb :index
    end

    post '/enter_names' do
        $player_1 = Player.new(params[:player_1], params[:player_option])
        $player_2 = Cpu.new
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

    post '/paper' do
        @player_option = $player_1.option
        redirect :game
    end

    post '/scissors' do
        @player_option = $player_1.option
        redirect :game
    end

    get '/game' do
        @player_option = $player_1.option
        @cpu_option = $player_2.pick_random_option
        erb :game
    end

    run! if app_file == $0
end