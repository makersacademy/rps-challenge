require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/outcome' do
    session[:player_move] = params[:player_move]
    redirect '/outcome'
  end

  get '/outcome' do
    @player_move = session[:player_move]
    erb(:outcome)
  end

end
