
require_relative "./lib/player"
require_relative "./lib/game"
require_relative "./lib/computer"
require 'sinatra'

class App < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.create(Player.new(params[:name]), Computer.new)
    redirect('/name')
  end

  get '/name' do
    @game = Game.instance
    erb(:name)
  end

  post '/choice' do
    Game.instance.player.weapon_of_choice_is(params[:weapon])
    Game.instance.computer.weapon_of_choice
    redirect('/outcome')
  end

  get '/choice' do
    erb(:choice)
  end

  get '/outcome' do
    @game = Game.instance
    erb(:outcome)
  end

end
