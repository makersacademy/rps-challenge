require "sinatra/base"
require "./lib/player.rb"
require "./lib/computer.rb"
require "./lib/game.rb"

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post "/name" do
    if params[:player_2] != ""
      @game = Game.create(Player.new(params[:player_1]), Player.new(params[:player_2]))
    else
      @game = Game.create(Player.new(params[:player_1]))
    end
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/play' do
    @game.player_1.choose_move(params[:player_1_move])
    @game.player_2.name == "RPSbot" ? redirect('/outcome') : redirect('/play2')
  end

  get '/play2' do
    erb(:play2)
  end

  post '/play2' do
    @game.player_2.choose_move(params[:player_2_move])
    redirect('/outcome')
  end

  get '/outcome' do
    erb(:outcome)
  end

end
