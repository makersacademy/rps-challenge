require 'sinatra/base'
require_relative './lib/rps.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    $game = Rps.new(session[:player_name])
    redirect '/name2'
  end

  get '/name2' do
    erb(:name)
  end

  get '/play' do
    erb(:play)
  end

  get '/rock' do
    $game.select_move('rock')
    @winner = $game.outcome
    erb(:end)
  end
end
