require 'sinatra/base'
require_relative 'game'

class RpsChallenge < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/username' do
    p session
    erb :username
  end

  post '/username' do
    session[:username] = params[:username]
    setup_usernames
    $usernames << params[:username]
    redirect '/opponent'
  end

  get '/opponent' do
    @username = session[:username]
    @usernames = $usernames
    setup_invites
    @opponent = $invites[@username]
    $invites[@username] ? erb(:accept_invite) : erb(:opponent)
  end

  post '/opponent' do
    session[:opponent] = params[:opponent]
    $invites[session[:opponent]] = session[:username]
    redirect '/invite'
  end

  get '/invite' do
    $game ? redirect('/game') : erb(:invite)
  end

  post '/invite' do
    $game = Game.new session[:username], $invites[session[:username]]
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/game' do
    if session[:username] == $game.player1
      $game.choice1 = params[:choice]
    else
      $game.choice2 = params[:choice]
    end
    if $game.all_choices?
      session[:result] = $game.play
      redirect '/result'
    else
      erb :wait
    end
  end

  get '/result' do
    @result = session[:result]
    erb :result
  end

private

  def setup_usernames
    $usernames ||= []
  end

  def setup_invites
    $invites ||= {}
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
