# $VERBOSE=nil
# ENV['RACK_ENV'] = 'test'
# require 'rack/test'
require 'sinatra/base'

class Game < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/savename' do
    session['playername'] = params[:playername]
    redirect '/play'
  end

  get '/play' do
    @playername = session['playername']
    @confirmation = session['confirmation']
    erb(:play)
  end

  # post '/choice' do
  #   session['confirmation'] = params[:confirmation]
  #   redirect '/play'
  # end

  post '/rock' do
      rock
      session['confirmation'] = params[:confirmation]
      redirect '/play'
  end

  post '/paper' do
      paper
      redirect '/play'
  end

  post '/scissors' do
      scissors
      redirect '/play'
  end

  def rock
    #random_method
    #if rock, etc.
    @confirmation = "#{@playername} chose rock!"
  end

  def paper
    #random_method
    #if rock, etc.
    #@confirmation =
  end

  def scissors
    #random_method
    #if rock, etc.
    #@confirmation =
  end

run! if app_file == $0 #maybe move

end
