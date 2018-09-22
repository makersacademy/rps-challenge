require 'sinatra/base'
require_relative 'lib/player'

class ChoiceGame < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/solo' do
    player = Player.new(params[:name])
    session[:game] = Game.new(player, Player.new('Computer'))
  end

  run! if app_file == $0
end
