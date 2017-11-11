require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    "Rock, Paper, Scissors!"
    erb(:index)
  end

  post '/name' do
    Game.start(Game.new(Player.new(params[:name]), Computer.new))
  end

end
