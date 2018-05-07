require 'sinatra/base'
require './lib/computer'
require './lib/result'

class RPSWeb < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    @player = params[:name]
    erb(:play)
  end

  get '/rock' do
    @computer = Computer.new.random_move
    @outcome = Result.new.rock_decision(@computer)
    erb(:rock)
  end

  get '/paper' do
    @computer = Computer.new.random_move
    @outcome = Result.new.paper_decision(@computer)
    erb(:paper)
  end

  get '/scissors' do
    @computer = Computer.new.random_move
    @outcome = Result.new.scissors_decision(@computer)
    erb(:scissors)
  end

end
