require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/p1_entry' do
    erb(:p1_entry)
  end

  post '/p1_entry' do
    if RPS.list.nil?
      RPS.initialize_list[:p1] = Player.new(params[:p1_name])
      erb(:p1_standby)
    else
      RPS.list[:p1] = Player.new(params[:p1_name])
      redirect('/play')
    end
  end

  get '/p1_standby' do
    RPS.list[:p2].nil? ? erb(:p1_standby) : redirect('/play')
  end

  get '/p2_entry' do
    erb(:p2_entry)
  end

  post '/p2_entry' do
    if RPS.list.nil?
      RPS.initialize_list[:p2] = Player.new(params[:p2_name])
      erb(:p2_standby)
    else
      RPS.list[:p2] = Player.new(params[:p2_name])
      redirect('/play')
    end
  end

  get '/p2_standby' do
    RPS.list[:p1].nil? ? erb(:p2_standby) : redirect('/play')
  end

  get '/play' do
    RPS.store_game(Game.new(RPS.list[:p1], RPS.list[:p2]))
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

  def self.initialize_list
    @list = {}
  end

  def self.list
    @list
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
