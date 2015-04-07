require 'sinatra/base'
require_relative 'player'
require_relative 'round'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    @name = params[:name]
    session[:player] = Player.new @name
    erb :start
  end

  get '/action' do
    @name = session[:player].name
    erb :action
  end

  post '/result' do
    @action = params[:action]
    @player = session[:player]
    @player.select_action @action.downcase.to_sym
    @opponent = Player.new 'AI'
    @opponent.auto_select_action
    @opponent_action = @opponent.action.capitalize
    player_hash = { name: @player.name, action: @player.action }
    opponent_hash = { name: @opponent.name, action: @opponent.action }
    round = Round.new player_hash, opponent_hash
    @result = round.winner
    erb :result
  end
end
