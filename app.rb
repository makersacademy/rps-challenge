require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect 'play'
  end

  get '/play' do
    $game = Game.new(session[:name])
    @game = $game
    erb(:play)
  end

  get '/play_again' do
    @game = $game
    erb(:play)
  end

  post '/choice' do
    session[:choice_you] = params[:choice]
    redirect 'result'
  end

  get '/result' do
    @choice_you = session[:choice_you]
    @game = $game
    @game.choose_mine
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
