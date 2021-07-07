require 'sinatra'
#  require './lib/game.rb'

class Game < Sinatra::Base
enable :sessions

    get '/' do
      erb :index
    end

    get '/form' do
        erb :form
    end

    #interpolate the name used fpr avatar from the form
    get '/play' do
        erb :form
    end

    #let's smash this..-play.erb
    post '/play' do
        @avatar_name = params[:avatar_name]
        erb :play
    end

     get '/result' do
        session[:option] = params[:option]
        erb :result  
     end

    get '/result' do
        @option = session[:option]
        game = Game.new
        @result = game.pick(@option)
        erb :result
    end

   run! if app_file == $0
end