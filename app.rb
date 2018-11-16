require 'sinatra/base'
require_relative './lib/determine_result'

class RockPaperScissors < Sinatra::Base
  run! if app_file == $0

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/action' do
    session[:action] = params[:action]
    redirect '/result'
  end

  get '/result' do
    @action = session[:action]
    @winner = DetermineResult.new(@action)
    @winner == "player" ? @message = "You win!" : @message = "You lose!"
    erb(:result)
  end

  post '/play_again' do
    params[:game_choice] == "Play Again" ? (redirect '/play') : (redirect '/')
  end

end
