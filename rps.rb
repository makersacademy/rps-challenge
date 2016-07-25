require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/bot'

class Rps < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player_name' do
    session[:human_player_name] = params[:human_player_name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb(:play)
  end

  post '/play' do
    session[:human_player_choice] = params[:choice]
    session[:bot_choice] = Bot.new.choice
    redirect '/play'
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
