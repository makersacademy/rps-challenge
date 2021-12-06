require "sinatra/base"
require "sinatra/reloader"
require "./lib/player.rb"
require "./lib/computer.rb"
require "./lib/game.rb"

class RPS < Sinatra::Base
    enable :sessions
    configure :development do
      register Sinatra::Reloader
    end

    get '/' do
        erb :index
    end

    post '/weapons' do
        $player = params[:player_1]
        $cpu = Computer.new.compmove
        erb :weapons
    end
    
    post '/result' do
        $weapon = params[:p1move]
        $outcome = Game.new.result
        erb :result
    end

    run! if app_file == $0
end