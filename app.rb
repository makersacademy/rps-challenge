require "sinatra/base"
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

    get '/' do
     erb(:index)
    end

    post '/player_name' do
      session[:player_name] = params[:player_name]
      redirect('/play')
    end

    get '/play' do
      @player_name = session[:player_name]
      erb(:play_view)
    end

    post '/move' do
      session[:player_move] = params[:player_move]
      redirect('/outcome')
    end

    get '/outcome' do
      @player_name = session[:player_name]
      @player_move = session[:player_move]
      erb(:outcome_view)
    end

    run! if @app_file == $0
end