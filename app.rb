require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/entry'

class RPS < Sinatra::Base

  get '/' do
    RPS.initialize_entry(Entry.new)
    erb(:index)
  end

  get '/player_choice' do
    erb(:player_choice)
  end

  get '/p1_entry' do
    erb(:p1_entry)
  end

  post '/p1_entry' do
    RPS.entry.add_entry(:p1, Player.new(params[:p1_name]))
    RPS.entry.p2_not_entered? ? redirect('/p1_standby') : redirect('/play')
  end

  get '/p1_standby' do
    RPS.entry.p2_not_entered? ? erb(:p1_standby) : redirect('/play')
  end

  get '/p2_entry' do
    erb(:p2_entry)
  end

  post '/p2_entry' do
    RPS.entry.add_entry(:p2, Player.new(params[:p2_name]))
    RPS.entry.p1_not_entered? ? redirect('/p2_standby') : redirect('/play')
  end

  get '/p2_standby' do
    RPS.entry.p1_not_entered? ? erb(:p2_standby) : redirect('/play')
  end

  get '/play' do
    RPS.store_game(Game.new(RPS.entry.list[:p1], RPS.entry.list[:p2]))
    erb(:play)
  end

  post '/play' do
    RPS.game.p1.choose(params[:move])
    RPS.game.p2.choose_random
    redirect '/result'
  end

  get '/result' do
    if RPS.game.return_winner == 'tie'
      @winner = 'tie'
    else
      @winner = RPS.game.return_winner.name
    end
    erb(:result)
  end

  private

  def self.store_game(game)
    @game = game
  end

  def self.game
    @game
  end

  def self.initialize_entry(entry)
    @entry = entry
  end

  def self.entry
    @entry
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
