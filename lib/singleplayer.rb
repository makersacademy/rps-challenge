class SinglePlayer

  def self.create_game
    @game = SinglePlayer.new
  end

  def self.instance
    @game
  end

  def computer_choice
    [:rock, :paper, :scissor].sample
  end

  def decide_winner(player_choice)
    weapons = [player_choice, computer_choice]
    if weapons[0] == weapons[1]
      :tied
    elsif weapons == [:rock, :scissor] || weapons == [:scissor, :paper] || weapons == [:paper, :rock]
      :player
    else
      :computer
    end
  end

end
