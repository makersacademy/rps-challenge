require "sinatra/base"
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"
class RockPaperScissors < Sinatra::Application
  enable(:sessions)
  get '/' do
    # 'Testing infrastructure works'
    erb(:index)
  end

  post "/names" do
    session[:player1_name] = Player.new(params[:player1_name])
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1_name]
    erb(:play)
  end

  post '/result' do
    session[:player_choice] = params[:player_choice]
    redirect '/result'
  end

  get '/result' do
    @player_choice = session[:player_choice]
    erb(:result)
  end

  run! if app_file == $0
end