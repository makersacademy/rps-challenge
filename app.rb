require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:p1_name]))
    redirect('/play')
  end

  get '/play' do
    @p1_name = @game.player1.name
  end

end
