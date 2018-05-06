require 'sinatra/base'
require_relative './lib/rps.rb'
require_relative './lib/player.rb'

class RPS < Sinatra::Base
  before do
    @rps = Rps.rps
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @rps = Rps.start(Player.new(params[:player_name]))
    redirect '/name2'
  end

  get '/name2' do
    erb(:name)
  end

  get '/play' do
    erb(:play)
  end

  get '/rock' do
    @rps.select_move(:rock)
    erb(@rps.outcome)
  end

  get '/paper' do
    @rps.select_move(:paper)
    erb(@rps.outcome)
  end

  get '/scissors' do
    @rps.select_move(:scissors)
    erb(@rps.outcome)
  end
end
