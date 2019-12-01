require "sinatra/base"
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :name_form
  end

  post '/name' do
    @player = Player.new(params[:name])
    @game = Game.create(@player.name)
    redirect '/choice'
  end

  get '/choice' do
    @name = @game.name
    erb :choice
  end

  post '/player_choice' do
    @game.choice = params[:choice]
    redirect '/game'
  end

  get '/game' do
    @choice = @game.choice
    @name = @game.name
    @bot_choice = @game.bot_choice
    @outcome = @game.outcome(@choice, @bot_choice)
    erb :game
  end

  run! if app_file == $0

end
