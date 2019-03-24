require 'sinatra'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player1]
    erb(:play)
  end

  post '/selection' do
    @selection = params[:option]
    erb(:selection)
  end

  run! if app_file == $0
end
