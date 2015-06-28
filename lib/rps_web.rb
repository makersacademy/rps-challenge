require 'sinatra/base'
require './lib/game'

class Rpsweb < Sinatra::Base

  set :public_folder, proc { File.join(root, '..', "public") }
  set :views, proc { File.join(root, '..', 'views') }

  enable :sessions

  get '/' do
    @visitor = params[:name]
    session[:visitor] = @visitor
    if $game
      session[:player] = 'player_1'
    else
      session[:player] = 'player_2'
    end
    $game = Game.new
    erb :index
  end

  get '/gameplay' do
    erb :gameplay
  end

  get '/choices' do
    choice = params[:choice]
    if session[:player] == 'player_1'
      $game.player_1.choose(choice)
    elsif session[:player] == 'player_2'
      $game.player_2.choose(choice)
    end
    redirect '/waiting_room'
  end

  get '/waiting_room' do
    erb :waiting_room
  end

  get '/result' do
    @winner = $game.winner?

    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
