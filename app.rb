require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player] = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/selection' do
    session[:player].choose(params[:selection])
    redirect '/results'
  end

  get '/results' do
    @player = session[:player]
    erb(:results)
  end

  run! if app_file == $0
end
