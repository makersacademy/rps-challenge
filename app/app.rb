require 'sinatra/base'
require './app/models/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:welcome)
  end

  post '/' do
    session[:p1] = Player.new(params[:name])
    redirect('/play')
  end

  get '/play' do
    @p1 = session[:p1]
    @p2 = Computer.new
    @game = Game.new(@p1, @p2)
    erb(:play)
  end

  run! if app_file == $0
end
