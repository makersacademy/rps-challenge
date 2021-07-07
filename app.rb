require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    #takes name entered, & stores it in the session
    #then redirects to /play
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    #takes name previously stored in session, and passes it to a variable
    #then runs the play view
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/game' do
    #takes choice entered and stores it in the session
    #then redirects to /result
    session[:game_entry] = params[:game_entry]
    redirect '/result'
  end

  get '/result' do
    #takes choice previously stored in session, and passes it to a variable
    #then runs the game view
    @game_entry = session[:game_entry]
    erb :game
  end

  run! if app_file == $0
  
end