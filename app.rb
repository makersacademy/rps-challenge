require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

# in app.rb
class RPS < Sinatra::Base
  enable(:sessions)

  get '/' do
    reset(session)
    erb(:index)
  end

  post '/name' do
    session[:player] = Player.new(params[:name])
    session[:computer] = Player.new("computer")
    redirect to('/game')
  end

  get '/game' do
    redirect to('/') if session[:player].nil?
    @player, @computer, @winner = action(session)
    erb(:game)
  end

  post '/play' do
    session[:action] = params[:action]
    redirect to('/game')
  end

  run! if app_file == $PROGRAM_NAME
end
