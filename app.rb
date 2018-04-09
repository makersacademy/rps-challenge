require_relative './lib/game.rb'
require 'watir'
require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    name = params['name']
    Game.get_game.add_player name
    Watir::Wait.until { Game.get_game.n_of_players == 2 }
    redirect "/play?name=#{name}"
  end

  get '/play' do
    erb :play, locals: { name: params['name'] }
  end

  post '/winner' do
    player, choice = params['choice'].scan /\w+/
    Game.get_game.set_choice params['choice']
    Watir::Wait.until { Game.get_game.choices_complete? }
    Game.get_game.finalize
    redirect "/final?player=#{player}"
  end

  get '/final' do
    erb :announce_winner, locals: { message: Game.get_game.message_for(params['player']) }
  end

  run! if app_file == $0
end
