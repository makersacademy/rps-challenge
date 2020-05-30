require 'sinatra/base'

class RPSGame < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session.store(:name, params[:name])
    redirect '/choose_move'
  end

  get '/choose_move' do
    @name = session[:name]
    erb(:choose_move)
  end

end
