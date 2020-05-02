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
end
