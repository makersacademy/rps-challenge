require 'sinatra/base'
require_relative 'computer_choice'
require_relative 'result'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, "RockPaperScissors"

  get '/' do
    erb(:index)
  end

  post '/choose_RPS' do
    session['player'] = params['player']
    @name = session['player']
    erb(:choose_RPS)
  end

  post '/rock' do
    @choice = 'Rock'
    @computer_choice = Computer.new
    @result = Result.new
    erb(:result)
  end

  post '/paper' do
    @choice = 'Paper'
    @computer_choice = Computer.new
    @result = Result.new
    erb(:result)
  end

  post '/scissors' do
    @choice = 'Scissors'
    @computer_choice = Computer.new
    @result = Result.new
    erb(:result)
  end
end
