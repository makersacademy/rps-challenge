require 'sinatra'
require_relative './models/game'

class App < Sinatra::Base

  def current_path
    request.path_info[1..-1].capitalize
  end

  def reset_moves
    @game.reset_player_moves
  end

  get '/' do
    erb :index
  end

  post '/new_user' do
    redirect '/' if params[:username_1].empty?
    user_2 = params[:username_2].empty? ? User.new('Computer') : User.new(params[:username_2])
    @game = Game.create(User.new(params[:username_1]), user_2)
    redirect '/dashboard'
  end

  get '/dashboard' do
    @game = Game.play
    redirect %w[/rock /paper /scissors /lizard /spork].sample if @game.current_user.name == 'Computer'
    erb :dashboard
  end

  get'/rock' do
    @game = Game.play
    reset_moves
    @game.current_user.current_move(current_path)
    erb :move
  end

  get '/paper' do
    @game = Game.play
    reset_moves
    @game.current_user.current_move(current_path)
    erb :move
  end

  get '/scissors' do
    @game = Game.play
    reset_moves
    @game.current_user.current_move(current_path)
    erb :move
  end

  get '/lizard' do
    @game = Game.play
    reset_moves
    @game.current_user.current_move(current_path)
    erb :move
  end

  get '/spork' do
    @game = Game.play
    reset_moves
    @game.current_user.current_move(current_path)
    erb :move
  end

  post '/change_turns' do
    @game = Game.play
    @game.rotate
    redirect '/dashboard'
  end

end
