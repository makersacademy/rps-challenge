require 'sinatra'


class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:name)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/move')
  end

  get '/move' do
    @name = session[:name]
    erb(:move)
  end

  post '/selected_move' do
    session[:player_move] = params[:move]
    redirect('/result')
  end

  get '/result' do
    @player_move = session[:player_move]
    @name = session[:name]
    erb(:result)
  end

  run! if app_file == $0

end
