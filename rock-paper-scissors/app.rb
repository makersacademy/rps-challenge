require 'sinatra'
require './lib/game.rb'


class RockPaperScissors < Sinatra::Base

  configure do
    # allows sinatra to find my CSS stylesheet
    set :public_folder, File.expand_path('../public', __FILE__)
    set :views        , File.expand_path('../views', __FILE__)
    set :root         , File.dirname(__FILE__)
  end

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(params[:player1],params[:player2])
    erb(:names)
  end

  post '/first_move' do
    erb(:first_move)
  end

  post '/second_move' do
    move = Move.new(params[:move])
    if move.valid?
      @game.store(move)
    else redirect '/try_again_1'
    end
    erb(:second_move)
  end

  get '/try_again_1' do
    erb(:try_again_1)
  end

  post '/result' do
    move = Move.new(params[:move])
    if move.valid?
      @game.store(move)
    else redirect '/try_again_2'
    end
    erb(:result)
  end

  get '/try_again_2' do
    erb(:try_again_2)
  end

end
