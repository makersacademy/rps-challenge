require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @name = params[:name]
    erb :name
  end

  post '/game' do
    @rock = Rock
    @paper = Paper
    @scissors = Scissors
  end


  run! if app_file == $0
end
