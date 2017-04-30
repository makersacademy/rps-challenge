require 'sinatra/base'
require './lib/game.rb'
require './lib/outcome.rb'

class RPS<Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
  @outcome = Outcome.create
  erb(:home)
  end

  get '/single_player' do
    erb(:single_player)
  end

  get '/two_player' do
    erb(:two_player)
  end

  before do
    @outcome = Outcome.instance
  end

  post '/name' do
    @outcome.player_name_1 = params[:name]
    redirect '/play'
  end

  post '/names' do
    @outcome.player_name_1 = params[:name]
    @outcome.player_name_2 = params[:name2]
    redirect '/play_2'
  end

  get '/play' do
    erb(:play)
  end

  get '/play_2' do
    erb(:play_2)
  end

  get '/play_2_second' do
    @outcome.player_choice = params[:product]
    erb(:play_two_second)
  end

  get '/outcome' do
    @outcome.player_choice = params[:product]
    @outcome.game = Game.new.random_selection
    erb(:outcome)
  end

  get '/outcome_two' do
    @outcome.game = params[:stuff]
    erb(:outcome_two)
  end

end
