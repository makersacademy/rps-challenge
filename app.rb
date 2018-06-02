require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/player'
  end

  get '/player' do
    @player = session[:name]
    erb(:player)
  end

  get '/rock' do
    @player = session[:name]
    erb(:rock)
  end

  run! if app_file == $0
end
