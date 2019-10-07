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
      redirect '/play_1'
    else Winner.create(Player.new(params[:player_1]), Player.new(params[:player_2]))
      redirect '/play_1'
    end
  end

  get '/play_1' do
    erb(:play_1)
  end

  get '/play_2' do
    erb(:play_2)
  end

  post '/fight' do
    @winner.player_2.choose(params[:RPS2])
    if @winner.player_2.name == 'Computer Genius'
      @winner.player_1.choose(params[:RPS1])
      redirect '/winner'
    elsif @winner.player_2.choice == nil
      @winner.player_1.choose(params[:RPS1])
      redirect '/play_2'
    else
      redirect '/winner'
    end
  end

  get '/winner' do
    erb(:winner)
  end

  get '/redirect' do
    redirect '/play_1' if @winner.player_2.name == 'Computer Genius'
    redirect '/play_2'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
