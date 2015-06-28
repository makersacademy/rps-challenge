require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'computer'

class Rps_web < Sinatra::Base
enable :sessions

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :welcome
  end

  get '/welcome' do
    if (params[:name] == '' || params[:name] == nil)
      erb :welcome
    else
      session[:name] = params[:name]
      $game = Game.new Player, Computer
      redirect '/new_game'
    end
  end

  get '/new_game' do
    erb :new_game
  end

  post '/result' do
    session[:weapon] = params[:weapon]
    $game.draw_weapons(session[:weapon])
    @result = $game.determine_winner($game.player,$game.computer)
    erb :result
  end




end
