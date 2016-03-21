require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player] ||= Player.new(params[:player])
    session[:game] ||= Game.new(session[:player])
    @game = session[:game]
    erb(:play)
  end

  post '/result' do
    @game = session[:game]
    choice = params[:choice]
    session[:game].player.make_a_choice(choice)
    session[:game].computer_choice
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
