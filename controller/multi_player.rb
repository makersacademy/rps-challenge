class RockPaperScissors < Sinatra::Base
  get '/twoplayer' do
    erb :twoplayer
  end

  post '/twoplayer-game' do
    session[:game] = Game.new(Player.new(params[:name1]), Player.new(params[:name2]))
    redirect '/multi_p1'
  end

  get '/multi_p1' do
    erb :multi_p1
  end

  post '/multi_p2' do
    session[:game].player1.player_move(params[:move])
    redirect '/multi_p2'
  end

  get '/multi_p2' do
    erb :multi_p2
  end

  post '/multi-result' do
    session[:game].player2.player_move(params[:move])
    redirect '/multi-result'
  end

  get '/multi-result' do
    erb :multi_result
  end
end
