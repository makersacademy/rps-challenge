require 'sinatra/base'
require_relative './lib/match'

class Game < Sinatra::Base

  enable :sessions

  before do
    @match = Match.instance
  end

  get '/' do
    erb :index
  end

  post '/named' do
    @match = Match.create(params[:charname], params[:char2])
    redirect '/playing'
  end

  get '/playing' do
    erb :playing
  end

  get '/re_move' do
    erb :re_move
  end

  post '/ending' do
    @match.do_move(@match.play2, params[:move])
    redirect '/aftermath'
  end

  post '/played' do
    @match.do_move(@match.play1, params[:move])
    if @match.game_type == "single"
      redirect '/aftermath'
    else
      redirect '/re_move'
    end
  end

  get '/aftermath' do
    @match.find_winner
    erb :aftermath
  end

  set :bind, '0.0.0.0'

  run! if app_file == $0

end
