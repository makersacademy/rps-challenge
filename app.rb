require 'sinatra/base'
require 'shotgun'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class MyApp < Sinatra::Base
  get '/' do
    erb(:name_form)
  end

  post '/name' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect '/multi'
  end

  get '/multi' do
    erb(:multiplayer)
  end

  get '/rps_comp' do
    player2 = Player.new
    player2.comp_choose
    $game.add_player(player2)
    @game = $game
    erb(:rps)
  end

  get '/friend_name' do
    erb(:friend_name)
  end

  get '/rps' do
    @game = $game
    erb(:rps)
  end

  post '/rps_friend1' do
    player2 = Player.new(params[:name2])
    $game.add_player(player2)
    @game = $game
    erb(:rps)
  end

  post '/choice' do
    $game.player.choice = params[:choice]
    if $game.player2.name == "Computer"
      redirect '/friend_winner'
    else
      redirect '/rps_friend2'
    end
  end

  get '/rps_friend2' do
    @game = $game
    erb(:rps_friend2)
  end

  post '/choice2' do
    $game.player2.choice = params[:choice2]
    redirect '/friend_winner'
  end

  get '/friend_winner' do
    $game.friend_determine_outcome
    @game = $game
    erb(:friend_winner)
  end



  run! if app_file == $0
end
