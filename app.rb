require 'sinatra/base'
require './lib/one_game.rb'
require './lib/two_game.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/set_name' do
    erb(:set_name)
  end

  post '/set_name' do
    session[:player_one] = params[:player_one]
    redirect '/one_play'
  end

  get '/set_names' do
    erb(:set_names)
  end

  post '/set_names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect '/two_play'
  end

  get '/one_play' do
    @player_one = session[:player_one]
    p params
    erb(:play_one)
  end

  get '/two_play' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    p params
    erb(:play_two)
  end

  post '/set_choice' do
    $game = One_game.new(params[:player_one_choice])
    redirect '/invalid' if $game.one_player.invalid_choice?
    redirect '/match' if $game.one_player.match?
    redirect '/win' if $game.one_player.win?
    redirect '/lose'unless $game.one_player.win?
  end

  post '/set_choices' do
    $two_game = Two_game.new(params[:player_one_choice], params[:player_two_choice])
    redirect '/invalid' if $two_game.invalid_choice?
    # redirect '/match' if $two_game.match?
    redirect '/one_win' if $two_game.one_win?
    redirect '/two_win' if $two_game.two_win?
  end

  get '/one_win' do
    erb(:one_win)
  end

  get '/two_win' do
    erb(:two_win)
  end

  get '/invalid' do
    @game = $game
    erb(:invalid)
  end

  get '/win' do
    @game = $game
    erb(:win)
  end

  get '/lose' do
    @game = $game
    erb(:lose)
  end

  get '/match' do
    @game = $game
    erb(:match)
  end


















  # start the server if ruby file executed directly
  run! if app_file == $0
end
