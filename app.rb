require 'sinatra'

class Game < Sinatra::Base

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

    post '/play' do
        @avatar_name = params[:avatar_name]
        erb :play
    end
end