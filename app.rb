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
    session[:charname] = params[:charname]
    @match = Match.create(params[:charname])
    redirect '/playing'
  end

  get '/playing' do
    erb :playing
  end

  post '/played' do
    @match.do_move(@match.play1, params[:move])
    redirect '/aftermath'
  end

  get '/aftermath' do
    @match.find_winner
    erb :aftermath
  end

  run! if app_file == $0
end
