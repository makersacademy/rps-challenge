require 'sinatra/base'
require './lib/round.rb'
class Rps < Sinatra::Base
    enable :sessions
    get '/' do
        erb :index
    end

    post '/name' do
        session[:player_1_name] = params[:player_1_name]
        redirect '/play'
    end

    get '/play' do
        @round = Round.new(session)
        # @player_1_name = session[:player_1_name]
        # @shape = session[:shape]
        # @computer_shape = session[:computer_shape]
        erb :play
    end

    post '/play' do
        session[:player_1_shape] = params[:shape]
        session[:computer_shape] = :Rock
        redirect '/play'
    end

    run! if app_file ==$0
end