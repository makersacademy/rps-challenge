require 'sinatra/base'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base

enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name]=params[:player_name]
    computer_defense = Computer.new.counter_attack
    @game = Game.create(computer_defense)
    redirect to("/play")
  end

  get '/play' do
    @player = session[:player_name]
    erb(:play)
  end

  post '/result' do
    player_choice = params[:attack].to_sym
    erb(@game.result(player_choice))
  end



  run! if app_file == $0
end
