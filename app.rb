require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/hierarchy'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :name_form, layout: :layout
  end

  post '/enter-name' do
    session[:player_name] = params['name']
    hierarchy = Hierarchy.new({ rock: :scissors, paper: :rock, scissors: :paper })
    @@game = Game.new hierarchy
    redirect to '/game'
  end

  get '/game' do
    @name = session[:player_name]
    @game = @@game
    erb :game, layout: :layout
  end

  post '/move' do
    @@game.play(params['move'].downcase.to_sym)
    redirect to '/game'
  end
end
