require 'sinatra/base'
require_relative 'lib/randomizer'
require_relative 'lib/judge'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/welcome' do
    session[:name] = params[:name]
    @name = session[:name]
    erb(:welcome)
  end

  post '/play' do
    @name = session[:name]
    @move = params[:move]
    @computer_move = Randomizer.new.move
    outcome = Judge.new.compare(person: @move, computer: @computer_move)
    if outcome == :pers
      @winner = @name
    elsif outcome == :comp
      @winner = 'Computer'
    else
      @winner = 'Nobody'
    end
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
