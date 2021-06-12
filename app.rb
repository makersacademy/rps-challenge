require 'sinatra/base'
# require 'sinatra/reloader'

class RPS < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
    
  end
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb :play
  end

  post '/play' do
    session[:player_move] = params[:shape]
    session[:opponent_move] = Opponent.new.move
    redirect '/play'
  end

  run! if app_file == $0
end