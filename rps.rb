require 'sinatra/base'
require './lib/game.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/intro' do
    #erb(:play)
    p params
    $game = Game.new(params[:player_1_name])
    redirect '/intro'
  end

  get '/intro' do
    #$player_1_name
    erb(:intro)
  end

  get '/play' do
    erb(:play)
  end

  post '/results' do
    p params
    $game.player_1_select(params[:selection])
    $game.computer_select
    @result == $game.result
    if @result == :player_1_win
      redirect '/player_1_win'
    elsif @result == :player_2_win
      redirect '/player_2_win'
    else
      redirect 'draw'
    end
  end

  get '/player_1_win' do
    erb(:player_1_win)
  end

  get '/player_2_win' do
    erb(:player_2_win)
  end

  get '/draw' do
    erb(:draw)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
