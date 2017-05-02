require 'sinatra/base'
require './lib/player'
require './lib/choice'
require './lib/result_determiner'

class RPS < Sinatra::Base

  before do
    @player = Player.instance
    @choices = Choice.instance
  end

  get '/' do
    erb(:sign_in)
  end

  post '/player_create' do
    @player = Player.create(params[:player1], params[:incumbent])
    redirect to('/game')
  end

  get '/game' do
    erb(:game)
  end

  get '/rock' do
    @choices = Choice.create(:Rock)
    redirect to('result')
  end

   get '/paper' do
    @choices = Choice.create(:Paper)
    redirect to('result')
   end

  get '/scissors' do
    @choices = Choice.create(:Scissors)
    redirect to('result')
  end

  get '/result' do
    @result = Result.new(@choices.player1_choice, @choices.incumbent_choice)
    erb(:result)
  end

end
