require 'sinatra/base'
# require 'shotgun'
require_relative "./rps-computer"
require_relative './result_calc'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, "RPS"

  get '/' do
    erb(:index)
  end

  post '/battlefield' do
    session['name'] = params['name']
    @name = session['name']
    erb(:battlefield)
  end

  post '/rock' do
    @choice = 'Rock'
    @computer_choice = RPSComputer.new
    @result = ResultCalc.new
    erb(:outcome)
  end

  post '/paper' do
    @choice = 'Paper'
    @computer_choice = RPSComputer.new
    @result = ResultCalc.new
    erb(:outcome)
  end

  post '/scissors' do
    @choice = 'Scissors'
    @computer_choice = RPSComputer.new
    @result = ResultCalc.new
    erb(:outcome)
  end
end
