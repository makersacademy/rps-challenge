require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'
require './lib/user.rb'
require './lib/hand.rb'
require './lib/round.rb'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p1 = User.new(params[:player1])
    p2 = User.new(params[:player2])
    @game = Game.create(p1, p2, params[:rounds])
    redirect '/play1'
  end

  before do
    @game = Game.instance
  end

  get '/play1' do
    erb(:play)
  end

  post '/bet1' do
    hand = Hand.new(params[:hand])
    @round = Round.create(hand)
    @game.switch
    redirect '/play2'
  end

  get '/play2' do
    erb(:play)
  end

  post '/bet2' do
    @round = Round.instance
    @round.hand.second_hand(params[:hand])
    redirect '/round'
  end

  get '/round' do
    @round = Round.instance
    thishand = @round.hand
    @game.give_points(thishand)
    puts @game.is_finished
    if @game.is_finished
      redirect '/results'
    else
      @game.next_round
      @game.switch
      redirect '/play1'
    end
  end

  get '/results' do
    @game = Game.instance
    erb(:results)
  end

  run! if app_file == $0
end