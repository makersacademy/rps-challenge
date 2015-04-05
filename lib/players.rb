module Players
  class << self
    attr_accessor :data
  end

  private

  def new_player
    session[:number] = Players.data.length
    Players.data[session[:number]] = { name: params[:name] }
  end

  def collect_match_data
    @player_number = session[:number]
    @my_data = Players.data[@player_number]
    @their_data = opponent
    reset_game if params[:move] && @their_data[:calc]
    @their_move = @their_data[:move]
    @their_name = @their_data[:name]
  end

  def opponent
    @player_number.even? ? dif = 1 : dif = -1
    Players.data[@player_number + dif] || {}
  end

  def remember_moves
    @my_data[:move] = params[:move] if params[:move]
    @my_move = @my_data[:move]
  end
end
