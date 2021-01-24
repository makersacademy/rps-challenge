require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure is working!'
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    @name = session[:name]
    @choice = session[:choice]
    @bot_choice = session[:bot_choice]
    erb(:play)
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:bot_choice] = params[:bot_choice]
    redirect '/play'
  end
end
