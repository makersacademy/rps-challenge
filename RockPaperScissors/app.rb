require 'sinatra/base'
require_relative 'lib/match'
require_relative 'lib/player'
require_relative 'lib/computer'
class RpsFight < Sinatra::Base
  ROCK = 'rock'
  PAPER = 'paper'
  SCISSORS = 'scissors'

  before do
    @match = Match.start
  end

  get '/' do
    erb :index
  end

  post '/name_assign' do
    computer = Computer.new
    player = Player.new(params[:name].empty? ? "Player" : params[:name])
    @match = Match.setup(player, computer)
    redirect '/rock_paper_fight'
  end

  get '/rock_paper_fight' do
    erb :rock_paper_fight
  end

  post '/rock' do
    @match.rollmove(ROCK)
    redirect 'rock_paper_fight'
  end

  post '/paper' do
    @match.rollmove(PAPER)
    redirect 'rock_paper_fight'
  end

  post '/scissors' do
    @match.rollmove(SCISSORS)
    redirect 'rock_paper_fight'
  end


end
