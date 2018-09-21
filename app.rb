require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/game')
  end

  get '/game' do
    @name = session[:name]
    erb(:game)
  end

  post '/player_choice' do
    session[:player_choice] = params[:player_choice]
    redirect('/results')
  end

  get '/results' do
    @player_choice = session[:player_choice]
    erb(:results)
  end

  run! if app_file == $0

end
