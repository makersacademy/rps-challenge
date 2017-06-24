
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

  post '/choice' do
    $game.player_one.weapon_of_choice_is(params[:weapon])
    redirect('/outcome')
  end

  get '/choice' do
    erb(:choice)
  end

  get '/outcome' do
    @game = $game
    erb(:outcome)
  end

end
