require "sinatra/base"

class RockPaperScissor < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    redirect to('/play')
    erb :play
  end

  get '/play' do
    @player1 = session[:player1]
    erb :play
  end

  run! if app_file ==$0
end
