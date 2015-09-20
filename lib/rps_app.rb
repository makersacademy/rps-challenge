require "sinatra/base"
require "./lib/human_player"
require "./lib/computer_player"
require "./lib/game"


class RPSchallenge < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views')}
  set :public_folder, proc { File.join(root, '..', 'public')}

  enable :sessions

  get "/" do
    redirect "/enter_name"
  end

  get "/enter_name" do
    @error = params[:error]
    erb :index
  end

  post "/submit_name" do
    @name = params[:name]
    session["name"] = @name
    redirect "/enter_name?error=1" if @name == "" || !@name
    session[:human] = HumanPlayer.new(@name)
    session[:computer] = ComputerPlayer.new
    session[:game] = Game.new(session[:human], session[:computer])
    redirect "/select_throw"
  end

  get "/select_throw" do
    @name = session["name"]
    erb :select_throw
  end

  post "/submit_throw" do
    if params["rock.x"]
      session[:human].set_throw(:rock)
    elsif params["paper.x"]
      session[:human].set_throw(:paper)
    elsif params["scissors.x"]
      session[:human].set_throw(:scissors)
    else
      fail "Illegal throw"
    end
    redirect "/game"
  end

  get "/game" do
    @play = session[:game].play

    @human_result = session[:human].wins
    @computer_result = session[:computer].wins
    @name = session["name"]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

