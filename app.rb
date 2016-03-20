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
    p2_not_entered? ? redirect('/p1_standby') : redirect('/enter_game')
  end

  get '/p1_standby' do
    p2_not_entered? ? erb(:p1_standby) : redirect('/enter_game')
  end

  get '/p2_entry' do
    erb(:p2_entry)
  end

  post '/p2_entry' do
    RPS.entry.add_entry(:p2, Player.new(params[:p2_name]))
    p1_not_entered? ? redirect('/p2_standby') : redirect('/enter_game')
  end

  get '/p2_standby' do
    p1_not_entered? ? erb(:p2_standby) : redirect('/enter_game')
  end

  get '/enter_game' do
    RPS.initialize_game(Game.new(RPS.entry.list[:p1], RPS.entry.list[:p2]))
    erb(:enter_game)
  end

  get '/p1_play' do
    redirect('/p1_end') if !RPS.game.in_game
    RPS.game.p1.enter_round
    erb(:p1_play)
  end

  get '/p2_play' do
    redirect('/p2_end') if !RPS.game.in_game
    RPS.game.p2.enter_round
    erb(:p2_play)
  end

  post '/p1_play' do
    RPS.game.p1.choose(params[:move])
    RPS.game.p2.chosen? ? redirect('/p1_result') : redirect('/p1_chosen')
  end

  get '/p1_chosen' do
    RPS.game.p2.chosen? ? redirect('/p1_result') : erb(:p1_chosen)
  end

  post '/p2_play' do
    RPS.game.p2.choose(params[:move])
    RPS.game.p1.chosen? ? redirect('/p2_result') : redirect('/p2_chosen')
  end

  get '/p2_chosen' do
    RPS.game.p1.chosen? ? redirect('/p2_result') : erb(:p2_chosen)
  end

  get '/p1_result' do
    if RPS.game.return_winner == 'draw'
      @winner = 'draw'
    else
      @winner = RPS.game.return_winner.name
    end
    RPS.game.update_score
    RPS.game.p1.exit_round
    erb(:p1_result)
  end

  get '/p2_result' do
    if RPS.game.return_winner == 'draw'
      @winner = 'draw'
    else
      @winner = RPS.game.return_winner.name
    end
    RPS.game.p2.exit_round
    erb(:p2_result)
  end

  post '/p1_result' do
    RPS.game.p1.reset_choice
    RPS.game.p1.enter_round
    redirect '/p1_play'
  end

  post '/p2_result' do
    RPS.game.p2.reset_choice
    RPS.game.p2.enter_round
    redirect '/p2_play'
  end

  get '/p1_end' do
    RPS.game.end_game
    erb(:p1_end)
  end

  post '/p1_end' do
    RPS.end_session
    redirect '/'
  end

  get '/p2_end' do
    RPS.game.end_game
    erb(:p2_end)
  end

  post '/p2_end' do
    RPS.end_session
    redirect '/'
  end

  private

  def self.initialize_game(game)
    @game = game
  end

  def self.game
    @game
  end

  def self.end_session
    @game = nil
  end

  def self.initialize_entry(entry)
    @entry = entry
  end

  def self.entry
    @entry
  end

  def p2_not_entered?
    RPS.entry.p2_not_entered?
  end

  def p1_not_entered?
    RPS.entry.p1_not_entered?
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
