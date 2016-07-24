require 'sinatra/base'
# require_relative './lib/player'
# require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  attr_reader :player_1, :weapon

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1_name]
    erb(:play)
  end

  post '/select' do
    session[:weapon] = params[:weapon]
    @weapon = session[:weapon]
    erb(:attack)
  end

  get '/opponent' do
    @weapon = session[:weapon]
    erb(:view_weapons)
  end

  run! if app_file == $0
end
