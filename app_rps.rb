require 'sinatra/base'
require './lib/turn'
require './lib/computer'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    p params
    erb(:index)
  end

  post '/names' do
    p params
    session[:player_name] = params[:player_name]
    redirect '/lets_fight'
  end

  get '/lets_fight' do
    p params
    @turn = Turn.new(session)
    erb(:lets_fight)
  end

  post '/lets_fight' do
    p params
    session[:player_weapon] = params[:player_weapon]
    session[:computer_weapon] = Computer.new.weapon
    redirect 'lets_fight'
  end

  run! if app_file == $0
end
