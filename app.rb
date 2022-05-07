require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RPSGame < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $p1_name = params[:p1_name]
    redirect '/play'
  end

  get '/play' do
    @p1_name = $p1_name
    erb :play
  end

  post '/choice' do
    $p1_choice = params[:play]
    redirect '/outcome'
  end

  get '/outcome' do
    @p1_choice = $p1_choice
    @game = Game.new
    erb :outcome
  end

  run! if app_file == $0

end