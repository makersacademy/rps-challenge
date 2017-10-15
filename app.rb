require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player_1]
    erb(:play)
  end

  get '/result' do
    @opponent = params[:opponents]
    @result = Game.instance.result(@opponent)
    erb(:result)
  end

end
