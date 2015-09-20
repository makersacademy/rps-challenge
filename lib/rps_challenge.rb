require 'sinatra/base'
require_relative 'game'

class RpsChallenge < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    'Welcome to RPS Challenge!'
    erb :index
  end

  get '/username' do
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

  get '/invite' do
    $invites[params[:opponent]] = session[:username]
    setup_games
    session[:game] = $games[params[:opponent] => session[:username]]
    $games[params[:opponent] => session[:username]] ? redirect('/start_game') : erb(:invite)
  end

  post '/start_game' do
    username1 = session[:username]
    username2 = $invites[session[:username]]
    $games[username1 => username2] = Game.new username1, username2
    session[:game] = $games[username1 => username2]
    redirect '/start_game'
  end

  get '/start_game' do
    erb :start_game
  end

  get '/play' do
    if $invites[session[:username]]
      session[:game].choice1 = params[:choice]
      @result = session[:game].play session[:game].choice1, session[:game].choice2 if session[:game].all_choices?
    else
      session[:game].choice2 = params[:choice]
      @result = session[:game].play session[:game].choice1, session[:game].choice2 if session[:game].all_choices?
    end
    erb :result
  end

private

  def setup_usernames
    $usernames ||= []
  end

  def setup_invites
    $invites ||= {}
  end

  def setup_games
    $games ||= {}
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
