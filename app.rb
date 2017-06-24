
require_relative "./lib/player"
require_relative "./lib/game"

require 'sinatra'

class App < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $game = Game.new(Player.new(params[:name]), Player.new)
    redirect('/name')
  end

  get '/name' do
    @game = $game
    erb(:name)
  end

  get '/choice' do
    erb(:choice)
  end

  get '/outcome' do
    erb(:outcome)
  end

end
