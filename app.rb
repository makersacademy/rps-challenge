require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
# require './lib/player.rb'
# require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb :index
  end
  
  post "/names" do
    p params
    $name = params[:name]
    redirect "/play"
  end
  
  get "/play" do
    @name = $name
    erb :game
  end
  
  post "/result" do
    # takes the weapon choice that was selected
    # selects the correct erb dependng on the result
  end
  
  get "/win" do
    # winner page
  end
  
  get "/draw" do
    # page for draws
  end
  
  get "/lose" do
    # page for losing
  end

  run! if app_file == $0
end