require 'sinatra'
require 'sinatra/base'

set :session_secret, 'super secret'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @cpu_move = ['Rock', 'Paper', 'Scissors'].sample
    erb(:play)
  end

  post '/move' do
    redirect '/outcome'
    # if win, redirect to '/win'
  end

  get '/outcome' do
    erb(:outcome)
  end

  run! if app_file == $0

end
