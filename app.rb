require 'sinatra/base'
require 'rspec'

class Rps < Sinatra::Base

    get '/' do
        erb(:index)
    end

    post '/players' do
        $player_1 = params[:player1]
        redirect '/play'
    end

    get '/play' do
        @player_1 = $player_1
        erb(:play)
    end

    post '/rock' do
        @player_1 = $player_1
        erb(:rock)
    end

    post '/scissors' do
        @player_1 = $player_1
        erb(:scissors)
    end

    post '/paper' do
        @player_1 = $player_1
        erb(:paper)
    end
end