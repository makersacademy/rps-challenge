require "sinatra/base"
require "sinatra/reloader"
require "./lib/player.rb"
require "./lib/weapon.rb"
require "./lib/computer.rb"

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
        $computer = Computer.new.compmove
        erb :weapons
    end
    
    post '/result' do
        $weapon = params[:p1move]
        $computer = Computer.new.compmove
       # $outcome = Game.new.outcome #This seems to be the problem when I run sinatra.
        erb :result
    end

    # post '/game' do
    #     @weapon = params[:weapon]
    #     p params
    #     erb :game
    # end

    # post '/result' do
    #     @weapon = params[:weapon]
    #     p params
    #     erb :result
    # end

    run! if app_file == $0
end