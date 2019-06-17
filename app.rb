require 'sinatra/base'

class Rps < Sinatra::Base



  get '/' do
    erb :start
  end

  post '/play' do
    @player_1 = params[:player_1]
    erb :play
  end

  post '/over' do
    erb :over
  end

  run! if app_file == $0
end
