module Players
  class << self
    attr_accessor :data
  end

  private

  def opponent
    @player_number.even? ? dif = 1 : dif = -1
    @their_number = @player_number + dif
    Players.data[@their_number] || {}
  end

  def setup_player
    session[:number] = Players.data.length
    Players.data[session[:number]] = { name: params[:name] }
  end

  def remember_moves
    @my_data[:move] = params[:move] if params[:move]
    @my_move = @my_data[:move]
  end

  def waiting?
    @their_data[:name].nil? ||
      (@my_move && !@their_move)
  end

  def calculate_scores
    @result = result(@my_move, @their_move)
    @my_data[:score] ||= 0
    @my_data[:score] += 1 if @result == :win
    @their_score = @their_data[:score]
    @my_score = @my_data[:score]
  end

  def collect_data
    @player_number = session[:number]
    @my_data = Players.data[@player_number]
    @their_data = opponent
    @their_move = @their_data[:move]
    @their_name = @their_data[:name]
  end
end
