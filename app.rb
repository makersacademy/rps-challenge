require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session['player1'] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session['player1']
    erb :play
  end



  run! if app_file == $0
end
