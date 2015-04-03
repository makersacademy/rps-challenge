require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    puts @other = other_move
    session[:name] = params[:name] if params[:name]
    params[:win] = true if params[:move] && win?(params[:move].to_sym, @other)
    puts session.inspect
    puts params.inspect
    erb :game
  end

  def win?(move, other)
    puts "win? is #{beats[move] == other}"
    beats[move] == other
  end

  def beats
    { rock: :scissors, scissors: :paper, paper: :rock }
  end

  def other_move
    beats.keys.sample
  end

  run! if app_file == $PROGRAM_NAME
end
