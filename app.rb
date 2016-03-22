require 'sinatra/base'
require './lib/game.rb'
require './lib/outcome.rb'
require './lib/player.rb'
require 'pry'
require './lib/computer.rb'
class RPS < Sinatra::Base
  get '/' do
    erb(:intro_page)
  end

  get '/player_form' do
    erb(:player_form)
  end

  post '/set_game' do
    player1=Player.new(params[:player1])
    player2=Player.new(params[:player2])
    Game.start_game(player1,player2)
    redirect('/weapons')
  end

  before do
    @game = Game.current_game
  end

  get '/weapons' do
    erb(:weapons)
  end

  post '/outcome' do
    @game.winner(Outcome.check(params[:weapon], Computer.new.weapon))
    redirect('/winner')
  end

  get '/winner' do
    @game.win == :tie ? erb(:tie) : erb(:win)
  end

  run! if app_file == $0
end
