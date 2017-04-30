require 'sinatra/base'

class Rps < Sinatra::Base

  get "/" do
    erb(:index)
  end

  get "/names" do
    @game = Game.create(Player.new(params[:player_1]), Computer.new)
    redirect "/rules"
  end

  get "/rules" do
    erb(:rules)
  end

end
