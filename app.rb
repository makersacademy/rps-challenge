require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect to('/play')
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/referee' do
    @game = Game.new(params[:player_pick].downcase.to_sym)
    p params[:player_pick]
    session[:winner] = @game.calculate_winner
    redirect to('/result')
  end

  get '/result' do
    @winner = session[:winner]
    erb(:result)
  end

  # this will start the server automatically if the app.rb file is run in the
  # command line with `ruby app.rb` :)
  run! if app_file == $0
end
