module Players
  class << self
    attr_accessor :data
  end

  private

  def opponent
    @player_number.even? ? dif = 1 : dif = -1
    Players.data[@player_number + dif] || {}
  end

  def setup_player
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

  def remember_moves
    @my_data[:move] = params[:move] if params[:move]
    @my_move = @my_data[:move]
  end

  def waiting?
    @their_data[:name].nil? ||
      (@my_move && !@their_move)
  end

  def calculate_scores
    @their_data[:score] ||= 0
    @my_data[:score] ||= 0
    if @result == :win
      @my_data[:score] += 1
    elsif @result == :lose
      @their_data[:score] += 1
    end
    @my_data[:calc], @their_data[:calc] = true, true
  end

  def save_scores
    [@my_data[:score], @their_data[:score]]
  end

  def reset_game
    @my_data[:move], @their_data[:move] = nil, nil
    @my_data[:calc], @their_data[:calc] = false, false
  end

  def print_scores
    scores = "<p>You: #{@my_score},"
    scores << " #{@their_name.split(' ')[0]}:"
    scores << " #{@their_score}</p>"
  end
end
