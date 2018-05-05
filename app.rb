require 'sinatra/base'
require_relative './lib/rps.rb'

class RPS < Sinatra::Base
  before do
    @rps = Rps.rps
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    @rps = Rps.start(session[:player_name])
    redirect '/name2'
  end

  get '/name2' do
    erb(:name)
  end

  get '/play' do
    erb(:play)
  end

  get '/rock' do
    @rps.select_move('rock')
    calculate_winner
    erb(:end)
  end

  get '/paper' do
    @rps.select_move('paper')
    calculate_winner
    erb(:end)
  end

  get '/scissors' do
    @rps.select_move('scissors')
    calculate_winner
    erb(:end)
  end

  def calculate_winner
    @winner = @rps.outcome
  end
end
