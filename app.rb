require 'sinatra'
require "sinatra/reloader" if development?
 

class RockPaperScissors < Sinatra::Base
    
    get '/' do
        erb :index
    end

    post '/name' do
        @name = params[:name]
        erb :game_start
    end

    run! if app_file == $0
end

