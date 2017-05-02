require 'sinatra'
require './lib/game'
require './lib/player'
require './lib/country'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.current
    @actors = Country.current
  end

  get '/' do
    @actors = Country.default
    erb(:index)
  end

  get '/french' do
    @actors = Country.french
    erb(:index)
  end

  get '/english' do
    @actors = Country.english
    erb(:index)
  end

  post '/play' do
    @game.add_player_two(Player.new(params[:player], params[:choice]))
    erb(:play)
  end

  post '/info' do
    @game = Game.start(Player.new(params[:player], params[:choice]))
    redirect '/player_two' if params[:no_of_players] == 'two_player'
    @game.player_2.generate_response
    erb(:play)
  end

  get '/player_two' do
    erb(:player_two_choice)
  end
end
