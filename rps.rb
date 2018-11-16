require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    p params
    session[:name] = params[:name]
    redirect to('/play')
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/choice' do
    p params
    session[:choice] = params[:choice]
    redirect to('/results')
  end

  get '/results' do
    @choice = session[:choice]
    @name = session[:name] # This persisted
    p session
    erb(:results)
  end

  run! if app_file == $0
end
