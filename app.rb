require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RPSLS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :login
  end

  post '/names' do
    @p1, @p2 = params[:p1], params[:p2]
    @game = Game.create(@p1, @p2)
    redirect '/play'
  end

  get '/play' do
    "#{@game.p1} v #{@game.p2}"
  end


  run! if app_file == $0

end
