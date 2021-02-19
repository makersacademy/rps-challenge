require 'sinatra/base'

class Duel < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player1]
    redirect '/move'
  end

  get '/move' do
    @player1
    erb(:move)
  end


  run! if app_file == $0

end
