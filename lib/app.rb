require 'sinatra/base'

class rps < Sinatra::Base
  get '/' do
    'Rock Paper Scissors, Lets start!!'
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end 


  run! if app_file == $0
end
