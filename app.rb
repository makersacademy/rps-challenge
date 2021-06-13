require 'sinatra'
require "sinatra/reloader"
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    @player_1 = params[:player_1]
    $rsp = RPS.new(@player_1)
    redirect '/play'
  end

  get '/play' do
    @rsp = $rsp
    erb :play
  end

  post '/outcome' do
    @rsp = $rsp
    erb :outcome
  end

  run! if app_file == $0
end