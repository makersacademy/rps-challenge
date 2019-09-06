require 'sinatra'

class RPS < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :form
  end

  post '/play' do
    session[:name]=params[:name]
    redirect '/game_on'
  end

  get '/game_on' do
    @human_player = session[:name]
    erb :game_on
  end


  run! if __FILE__ == $0

end
