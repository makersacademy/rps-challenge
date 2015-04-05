module GamePlay
  private

  def waiting?
    @their_data[:name].nil? ||
      (@my_move && !@their_move)
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
end