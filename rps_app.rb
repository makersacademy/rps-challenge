
require 'sinatra/base'
require './lib/pc_player'
require './lib/game'
require './lib/player'

# missing features:
# best of 3


class RPSApp < Sinatra::Base

  enable :sessions

  get '/' do
    $game = nil
    erb :index
  end

  get '/show_rules' do
    session[:rules] = true
    redirect to '/'
  end

  get '/pvc' do
    session[:rules] = false
    erb :pvc
  end

  post '/pvc_name' do
    $game = Game.new(Player.new(params[:player_name]), PCPlayer.new)
    redirect to '/pvc'
  end

  post '/pvc_choice' do
    if params[:choice] == "Spock"
      $game.player1.choice= params[:choice].to_sym
    else
      $game.player1.choice= params[:choice].downcase.to_sym
    end
    redirect to '/pvc'
  end

  get '/pvc_pc_choice' do
    $game.player2.generate_choice
    $game.calculate_winner
    redirect to '/pvc'
  end

  get '/pvp' do
    session[:rules] = false
    erb :pvp
  end

  post '/pvp_names' do
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect to '/pvp'
  end

  post '/pvp_choice' do
    if $game.player1.choice.nil?
      if params[:choice] == "Spock"
        $game.player1.choice= params[:choice].to_sym
      else
        $game.player1.choice= params[:choice].downcase.to_sym
      end
    elsif $game.player2.choice.nil?
      if params[:choice] == "Spock"
        $game.player2.choice= params[:choice].to_sym
      else
        $game.player2.choice= params[:choice].downcase.to_sym
      end
      $game.calculate_winner
    end
    redirect to '/pvp'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
