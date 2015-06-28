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
    if session[:player] == 'player_1'
      choice = params[:choice]
      $game.player_1.choose(choice)
    else
      choice = params[:choice]
      $game.player_2.choose(choice)
    end
    erb :gameplay
  end

  get '/result' do
    if session[:player] == 'player_1'
      @otherchoice = $game.player_1.opponent_choice
    elsif session[:player] == 'player_2'
      @otherchoice = $game.player_2.opponent_choice
    end
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
