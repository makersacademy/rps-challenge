require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class ChoiceGame < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/solo' do
    player = Player.new(params[:name])
    session[:game] = Game.new(player, Player.new('Computer'))
    redirect "/sologame"
  end

  get '/sologame' do
    @game = session[:game]
    erb :sologame
  end

  run! if app_file == $0
end
