class Round
  attr_reader :selections

  def initialize
    @selections = []
  end

  def selection(player, selection)
    @selections << {player: player, selection: selection}
  end

  def determine_round_winner

    if @selections[0][:selection] == :rock
      if @selections[1][:selection] == :scissors
        @selections[0][:player]
      elsif @selections[1][:selection] == :paper
        @selections[1][:player]
      else
        :draw
      end

    elsif @selections[0][:selection] == :paper
      if @selections[1][:selection] == :rock
        @selections[0][:player]
      elsif @selections[1][:selection] == :scissors
        @selections[1][:player]
      else
        :draw
      end

    elsif @selections[0][:selection] == :scissors
      if @selections[1][:selection] == :paper
        @selections[0][:player]
      elsif @selections[1][:selection] == :rock
        @selections[1][:player]
      else
        :draw
      end
    end
    
  end

end