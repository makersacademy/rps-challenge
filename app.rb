require 'sinatra/base'

class RPSGame < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/register' do
    session[:player] = Player.new(params[:player_name])
    redirect "/turn"
  end

  get '/turn' do
    @player_name = session[:player].name
    erb :turn
  end

end
