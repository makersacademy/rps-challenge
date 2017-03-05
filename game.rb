require 'sinatra/base'
require './lib/player'
require './lib/moves'

class Game < Sinatra::Base
  attr_reader :player, :rock, :paper, :scissors, :computer, :moves
get '/' do
erb(:login)
end

post '/name' do
@player = params[:name]
erb(:main_screen)
end

post '/move_page' do
rock = Player.new(params[:rock])
scissors = Player.new(params[:scissors])
paper= Player.new(params[:paper])
@moves = Moves.new(rock, paper, scissors)
  erb(:move)
  end

  post '/please' do
    @moves = Moves.new(rock, paper, scissors)
    if @ans=="scissors" and @comupter_value=="paper"
      erb(:login)
    elsif @ans == @computer_value
      erb(:login)
    elsif @ans > @computer_value
      erb(:move)
    else @ans< @computer_value
      erb(:move)
    end
  end
end
