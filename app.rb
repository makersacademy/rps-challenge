require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to ('/play')
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/game_play' do
    session[:rps_choices] = params[:rps_choices]
    redirect to('/results')
  end

  get '/results' do
    @rps_choices = session[:rps_choices]
    erb :results
  end

end
