require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/name' do 
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do 
    @name = session[:name]
    erb(:play)
  end

  get '/rock' do 
    erb(:rock)
  end

  get '/paper' do
    erb(:paper)
  end

  get '/scissors' do
    erb(:scissors)
  end
end