require 'sinatra/base'
require'./lib/game.rb'
require'./lib/player.rb'
require'./lib/rules.rb'
require'./lib/review.rb'
class Rps < Sinatra::Base

  enable  :sessions

  get '/' do
    erb:index
  end

  post '/play' do
    @player = Player.new(params[:name])
    @game = Game.create(@player)
    erb:play
  end

  post '/result' do
    puts params[:radios1]
    @game = Game.instance
    @game.player.choose(params[:radios1])
    @game.computer_choice
    @game.player_choice
    @game.winner
    @game.print_results
    erb:result
  end

  get '/review' do
    @review = Review.create(Game.instance.player.name)
    @review.values
    @review.print_values
    erb:review
  end

end
