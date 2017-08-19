require 'sinatra/base'
require_relative './lib/player'

# in app.rb
class RPS < Sinatra::Base
  enable(:sessions)

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = Player.new(params[:name])
    redirect to('/game')
  end

  get '/game' do
    redirect to('/') if session[:player].nil?
    @player = Player.from_session(session)
    @computer = Player.simulate
    erb(:game)
  end

  post '/play' do
    session[:action] = params[:action]
    redirect to('/game')
  end

  run! if app_file == $PROGRAM_NAME
end
