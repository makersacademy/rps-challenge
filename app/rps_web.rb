require 'sinatra/base'
require_relative '../lib/game.rb'



class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player = Player.new(params[:name])
    Game.save(Game.new(@player))
    redirect('/play')
  end

  post '/multi_names' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    Game.save(Game.new(@player1,@player2))
    redirect('/multi_play1')
  end

  get '/play' do
    @game = Game.load
    erb(:play)
  end

  get '/multi_play1' do
    @game = Game.load
    erb(:multi_play1)
  end

  get '/multi_play2' do
    @game = Game.load
    erb(:multi_play2)
  end

  post '/choice' do
    @game = Game.load
    @game.player1.weapon(params[:choice])
    @game.player2.weapon
    redirect('/result')
  end

  post '/multi_choice1' do
    @game = Game.load
    @game.player1.weapon(params[:choice])
    redirect('/multi_play2')
  end

  post '/multi_choice2' do
    @game = Game.load
    @game.player2.weapon(params[:choice])
    redirect('/multi_result')
  end

  get '/multi_result' do
    @game = Game.load
    erb(:multi_result)
  end

  get '/result' do
    @game = Game.load
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
