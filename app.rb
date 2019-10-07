require "sinatra/base"
require_relative "./lib/game"

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.new
  end

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:name] = params[:name]
    redirect "/lights"
  end

  get "/lights" do
    # session[:name] = params[:name]
    erb(:lights)
  end

  get "/selection" do
    erb(:selection)
  end

  get "/result_rock" do
    erb(:result_rock)
  end

  get "/result_paper" do
    erb(:result_paper)
  end

  get "/result_scissors" do
    erb(:result_scissors)
  end

  run! if app_file == $0

end
