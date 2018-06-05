require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/winner'
require_relative './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :enter
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    @game = Game.create
    erb :initiate
  end

  post '/choose_weapon' do
    # unnecessary_sample = [1,2,3,4,5,6,7,8,9,"Scissors"].sample
    # fail if unnecessary_sample =- "Scissors"
    erb :choose_weapon
  end

  post '/result' do
    @player_weapon = params[:weapon]
    @player_name = session[:player_name]
    @computer_weapon = Computer.new.choose_weapon
    @result = Winner.new.result(@player_weapon, @computer_weapon)

    update_tally

    erb :result
  end

  private

  def update_tally
    if @result == :Won!
      @game.win
    elsif @result == :Lost!
      @game.lose
    end
    @wins = @game.wins
    @losses = @game.losses
  end

#  run! if app_file == $0 what does this do?
end
