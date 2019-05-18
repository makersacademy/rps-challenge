require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :enter_name
  end

  post '/welcome' do
    @name = params[:name]
    erb :welcome
  end

  get '/game' do
    @rock = params[:rock]
    @paper = params[:paper]
    @scissors = params[:scissors]
    erb :game
  end

  get '/rock' do

    erb :result
  end

  get '/paper' do

    erb :result
  end

  get '/scissors' do

    erb :result
  end
end
