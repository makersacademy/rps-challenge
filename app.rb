
require_relative "./lib/player"
require_relative "./lib/game"
require_relative "./lib/computer"
require_relative "./lib/helpers"
require 'sinatra'
require 'rack-flash'


class App < Sinatra::Base

  include Helpers

  use Rack::Flash
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.create(Player.new(params[:name]), Computer.new)
    redirect('/name') unless name_field_is_blank
    flash[:error] = "Um, you need to input a name!"
    redirect('/')
  end

  get '/name' do
    @game = Game.instance
    erb(:name)
  end

  post '/choice' do
    Game.instance.player.weapon_of_choice_is(params[:weapon])
    Game.instance.computer.weapon_of_choice
    redirect('/outcome') unless no_weapon_is_picked
    flash[:error] = "Um, you need to pick a weapon!"
    redirect('/choice')
  end

  get '/choice' do
    erb(:choice)
  end

  get '/outcome' do
    @game = Game.instance
    erb(:outcome)
  end

end
