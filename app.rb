require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'


class Rps < Sinatra::Base

    enable :sessions

    get '/' do
        erb :index
    end

    post '/game' do
        session[:game] = params[:mode]
        redirect '/names'
    end

    get '/name' do
        erb :names
    end

    post '/set_name' do
        player_1 = Player.new(params[:player])
        erb :names
    end
end