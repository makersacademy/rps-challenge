require 'sinatra/base'
require_relative './lib/game.rb'

class RpsWeb < Sinatra::Base
  set :views, proc { File.join(root, 'views') }

  get '/' do
    erb :index
  end

  post '/result' do
    @player_choice = params[:choice]
    session[:name] = params[:name]
    @name = session[:name]
    @player = Player.new
    @game = Game.new
    erb :result
  end


  run! if app_file == $0
end
