require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions # for session variables

  get '/' do
    erb(:homescreen_names)
  end

  post '/submit_names' do
    session[:game] = Game.new(Player.new(params[:name]), Player.new)
    redirect('/first_choose')
  end

  get '/first_choose' do
    erb(:first_choose)
  end

  get '/later_choose' do
    erb(:later_choose)
  end

  post '/choice' do
    @game.set_choice(@game.player_1, params[:move])
    @game.rand_choice(@game.player_2)
    redirect('/results')
  end

  get '/results' do
    erb(:results)
  end

  # before block below will execute before each route above, saving from defining @player multiple times
  before do
    @game = session[:game]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
