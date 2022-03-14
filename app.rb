require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'


class RPS < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    get '/' do
      erb(:index)
    end

    post '/names' do
        $player = Player.new(params[:player])
        redirect '/play'
    end

    get '/play' do
        @player = $player
        erb(:play)
    end

    get '/result' do
        @player_choice = params[:player_choice]
        $game = Game.new
        @ai_choice = $game.ai_choice
        @result = $game.evaluate(@player_choice, @ai_choice)
        erb(:result)
    end

    # start the server if ruby file executed directly
    run! if app_file == $0

end