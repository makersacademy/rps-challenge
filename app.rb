require "sinatra/base"
require_relative "lib/score"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:name] = params[:name]
    redirect("/play")
  end

  get "/play" do
    @name = session[:name]
    erb(:play)
  end

  post "/turn" do
    session[:turn] = params[:turn].capitalize
    redirect("/score")
  end

  get "/score" do
    game = Score.new(session[:turn])
    @name = session[:name]
    @score = session[:turn]
    @result = game.result
    @computer_score = game.computer_score
    erb(:score)
  end

  run! if app_file == $0
end

# To run -> ruby app.rb