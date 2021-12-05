require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    enable :sessions

    get '/' do
        erb :index
    end

    post '/name_form' do
       # @sessions = Player.new(params[:name])
        session[:name] = params[:name]
        redirect '/play'
    end

    get '/play' do
        @name = session[:name]
        erb :play
    end

    post '/who-wins' do
        @player_choice = params[:choice]
        name = session[:name]
        @game = Game.new(name)
        @game_choice = @game.pick_choice
        erb :who_wins
    end

    run! if app_file == $0
end