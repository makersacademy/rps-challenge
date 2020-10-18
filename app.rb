require 'sinatra/base'

  class PlayerName < Sinatra::Base
    enable :sessions

    get '/' do
      erb(:home_page)
    end

    post '/names' do
      session[:player_name] = params[:player_name]
      redirect '/play'
    end

    get '/play' do
      @player_name = session[:player_name]
      erb(:play)
    end

    post '/choice' do
      session[:chosen_move] = params[:chosen_move]
      redirect '/result_screen'
    end

    def who_wins
      @result = session[:chosen_move]
      opponent = ["Rock", "Paper", "Scissors"].sample
        if @result == "Rock"
          if opponent == "Scissors"
            return "You chose Rock. Your opponent chose Scissors....You lose!"
          elsif opponent == "Paper"
            return "You chose Rock. Your opponent chose Paper....You win!"
          elsif opponent == "Rock"
            return "You chose Rock. Your opponent also chose Rock....It's a draw"
          end
        elsif @result == "Paper"
          if opponent == "Scissors"
            return "You chose Paper. Your opponent chose Scissors....You lose!"
          elsif opponent == "Rock"
            return "You chose Paper. Your opponent chose Rock....You win!"
          elsif opponent == "Paper"
            return "You chose Paper. Your opponent also chose Paper....It's a draw"
          end
        elsif @result == "Scissors"
          if opponent == "Rock"
            return "You chose Scissors. Your opponent chose Rock....You lose!"
          elsif opponent == "Paper"
            return "You chose Scissors. Your opponent chose Paper....You win!"
          elsif opponent == "Paper"
            return "You chose Scissors. Your opponent also chose Scissors....It's a draw"
          end
        end
      end

    get '/result_screen' do
      @the_result = who_wins
      erb(:results)
    end

    post '/back_home' do
      redirect '/'
    end

    run! if app_file == $0
  end
