require 'sinatra/base'

class Rps < Sinatra::Base
    enable :sessions

  get '/' do
   erb(:index)
  end

  # post '/names' do
  #   $p1 = Player.new(params[:player_one])
  #   $p2 = Player.new(params[:player_two])
  #   $game = Game.new($p1, $p2)
  #   redirect '/coin_toss'
  # end

  # get '/play' do
  #   erb(:play)
  # end

end
