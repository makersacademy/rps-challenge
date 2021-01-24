class Game
  attr_reader :champion
  def winner(player, computer)
    if player.to_sym == computer
    elsif SET[player.to_sym] == computer.to_sym
      self.champion = 'player'
    else
      self.champion = 'computer'
    end
  end

  private
  attr_writer :champion
  SET = { :rock => :scissors,
          :paper => :rock,
          :scissors => :paper }
end
