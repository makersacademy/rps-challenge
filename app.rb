require 'sinatra'
require 'sinatra/reloader' if test?
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  configure :test do 
    register Sinatra::Reloader
  end

  get '/' do
    session[:winner] = nil

    erb :welcome
  end

  get '/play' do
    redirect '/' unless session[:player]

    @player = session[:player]
    @player_move = session[:player_move]
    @robot_move = session[:robot_move]
    @player_image = "/images/#{@player_move}.png"
    @robot_image = "/images/#{@robot_move}.png"
    @winner = session[:winner]
    @victory_message = @winner == 'Nobody' ? 'Draw!' : "#{@winner} wins!"
    @comparator = generate_comparator(@winner)
 
    erb :play
  end

  post '/create-player' do
    session[:player] = params[:player]

    redirect '/play'
  end

  post '/move' do
    session[:winner] = nil
    session[:player_move] = params[:move]
    session[:robot_move] = Game.random_move
    result = Game.judge(session[:player_move], session[:robot_move])
    session[:winner] = parse_winner(result)

    redirect '/play'
  end

  run! if app_file == $0

  private

  def parse_winner(result)
    lookup = { -1 => session[:player], 1 => 'Robot', 0 => 'Nobody' }
    lookup[result]
  end

  def generate_comparator(winner)
    return  case winner
            when session[:player]
              '>'
            when 'Robot'
              '<'
            else
              '=='
            end
  end
end
