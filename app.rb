require 'sinatra/base'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1])
    redirect('/play')
  end

  get '/play' do
    @player_1 = session[:player_1].name
    erb(:play)
  end

  post '/choose' do
    @player_1 = session[:player_1].name
    redirect('/outcome')
  end

  get '/outcome' do
    @player_1 = session[:player_1].name
    erb(:outcome)
  end

  run! if app_file == $0
end
