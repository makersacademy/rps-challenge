require 'sinatra'
require './lib/game'

class RPSWeb < Sinatra::Application

  set :public_folder, 'public'

  get '/' do
    erb(:index)
  end

  post '/play' do
    player_1, player_2 = Player.new(params[:name]), Ai.new
    Game.create(player_1, player_2)
    @game = Game.instance
    @game.player_1.choice = params[:weapon].to_sym
    @winner = @game.who_won
    erb(:outcome)
  end

end
