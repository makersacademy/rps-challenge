require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session['player'] = params[:playername]
    redirect '/startgame'
  end

  get '/startgame' do
    @player = session['player']
    erb(:startgame)
  end

  get '/play' do
    @player = session['player']
    erb(:play)
  end

  post '/moves' do
    session['playermove'] = params[:move]
    redirect '/results'
  end

  get '/results' do
    @player = session['player']
    @playermove = session['playermove']
    @game = Game.new(@player)
    @computermove = @game.computer_move
    @winner = @game.winner(@playermove, @computermove)
    erb(:results)
  end

  run! if app_file == $0
end
