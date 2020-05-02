require 'sinatra'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = Player.new(params[:name])
    redirect('/play')
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/choose' do
    @player = session[:player]
    @player.choose(params[:choice])
    redirect('/result')
  end

  get '/result' do
    @player = session[:player]
    erb(:result)
  end
end
