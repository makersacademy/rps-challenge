require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/winner'
require_relative './lib/tally'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :enter
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :initiate
  end

  post '/choose_weapon' do
    erb :choose_weapon
  end

  post '/result' do
    @player_weapon = params[:weapon]
    @player_name = session[:player_name]
    @computer_weapon = Computer.new.choose_weapon
    @result = Winner.new.result(@player_weapon, @computer_weapon)

    create_tally
    update_tally

    erb :result
  end

  private

  def create_tally
    $tally ||= Tally.new
  end

  def update_tally
    if @result == :Won!
      $tally.win
    elsif @result == :Lost!
      $tally.lose
    end
    @wins = $tally.wins
    @losses = $tally.losses
  end

#  run! if app_file == $0 what does this do?
end
