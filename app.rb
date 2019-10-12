# app.rb
require 'sinatra/base'
require './lib/winner'
# require_relative './lib/game'

class RPS < Sinatra::Base
  # ... app code here ...

enable :sessions

  before do
    @winner = Winner.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    if (params[:player_2]) == 'Computer'
      Winner.create(Player.new(params[:player_1]))
    else Winner.create(Player.new(params[:player_1]), Player.new(params[:player_2]))
    end
    redirect '/player_1_choice'
  end

  get '/player_1_choice' do
    erb(:player_1_choice)
  end

  get '/player_2_choice' do
    redirect '/winner' if @winner.player_2.name == 'Computer Genius'
    erb(:player_2_choice)
  end

  post '/moves_player_1' do
      @winner.player_1_choice(params[:RPS1])
      @winner.player_2_choice(params[:RPS2])
      redirect '/player_2_choice'
  end

  post '/moves_player_2' do
      @winner.player_2_choice(params[:RPS2])
      redirect '/winner'
  end

  get '/winner' do
    erb(:winner)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
