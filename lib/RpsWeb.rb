require 'sinatra/base'
require_relative 'rps'

#file should be called server.rb??

class RpsWeb < Sinatra::Base

  enable :sessions

  #set the root relative to where this current file.
  #set :root, File.dirname(__FILE__,'..')  #__FILE__ is the location of current file

  set :views, Proc.new { File.join(root, "..", "views") }
  # why do we need to tell sinatra where the views are, we didn't need this for the cat?

  get '/' do
    erb :index
  end

  post '/' do
    params[:player1].nil? ? @player1 = "" : @player1 = params[:player1]
    if @player1.length > 2
      session['player'] = @player1
      erb :gamepage
      redirect "/gamepage"
    else
      @errormsg = true
      erb :index
    end
  end

  get '/gamepage' do
    @player1 = session['player']
    session['human'] = 0
    session['computer'] = 0
    @publish_result = false
    erb :gamepage
  end

  post '/gamepage' do
    @game = RPS.new
    @computer, @winner = @game.play_round(params[:human_choice])
    @publish_result = true
    @winner = session['player'] if @winner == "human"
    @winner = "no one" if @winner == "draw"
    session['human'] += 1 if @winner == "human"
    session['computer'] += 1 if @winner == "computer"

    erb :gamepage
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
