require 'sinatra/base'

class Battle < Sinatra::Base
  set :session_secret, 'supersecret'

  get '/' do
    erb(:menu)
  end

  post '/names' do
    @current_game = Game.create({ :name1 => params[:P1], :name2 => params[:P2] })
    erb(:play)
  end

  before do
    @current_game = Game.instance
  end

  post '/fight' do

  end
end
