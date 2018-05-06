require 'sinatra/base'
require_relative './lib/rps.rb'

class RPS < Sinatra::Base
  before do
    @rps = Rps.rps
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @rps = Rps.start(params[:player_name])
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
    erb(:end)
  end

  get '/paper' do
    @rps.select_move(:paper)
    erb(:end)
  end

  get '/scissors' do
    @rps.select_move(:scissors)
    erb(:end)
  end
end
