require 'sinatra'
require 'shotgun'
require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissorsApp < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(params[:Player1], params[:Player2])
    redirect('/selection')
  end

  get '/selection' do
    @game = Game.instance
    @turn_player = @game.current_turn.name
    @non_turn_player = @game.off_turn.name
    @game.switch_turn
    erb(:selection)
  end

  post '/rps' do
    @game = Game.instance
    @game.choices << params[:RPS]
    #### params appear to be saving. Need to find a way to clear params.
    #### try running game a few times
    if @game.both_turns_complete?
      @game.choices.clear
      redirect ('/winner')
    else
      redirect ('/selection')
    end
  end

  get '/winner' do
    @game = Game.instance
    @winner = @game.winner
    erb(:winner)
  end

  run! if app_file == $PROGRAM_NAME
end