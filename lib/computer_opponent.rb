
class ComputerOpponent

  attr_reader :shape

  def pick_shape
    [:rock, :paper, :scissors].sample
  end


  def shape(computer_shape=pick_shape)
    @shape = computer_shape
  end


  def outcome(player_choice)
    if player_choice == :rock
      if @shape == :paper
        return :computer_wins
      else @shape == :scissors
        return :computer_loses
      end

    elsif player_choice == :paper
      if @shape == :scissors
        return :computer_wins
      else @shape == :rock
        return :computer_loses
      end

    elsif player_choice == :scissors
      if @shape == :rock
        return :computer_wins
      else @shape == :paper
        return :computer_loses
      end
    end



  end





end
