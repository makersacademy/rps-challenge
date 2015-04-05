module Players
  class << self
    attr_accessor :players, :moves, :scores, :data
  end

  private

  def setup_opponent
    if @player_number.even?
      @their_number = @player_number + 1
    else
      @their_number = @player_number - 1
    end
    Players.data[@their_number] || {}
  end

  def setup_player
    @player_number = Players.players.length
    session[:number] = @player_number
    Players.players << @name
    session[:name] = @name
    Players.data[@player_number] = { name: @name }
  end

  def remember_moves
    @my_data[:move] = params[:move] if params[:move]
    @my_move = @my_data[:move]
  end

  def waiting?
    session[:both_names].nil? ||
      (@my_move && !@their_move)
  end

  def calculate_scores
    @result = result(@my_move, @their_move)
    @my_data[:score] ||= 0
    @my_data[:score] += 1 if @result == :win
    @their_score = @their_data[:score]
    @my_score = @my_data[:score]
  end
end