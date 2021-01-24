class Game
  attr_reader :champion, :computer

  def winner(player)
    @computer = Computer.new
    if player.to_sym == @computer.moved
    elsif SET[player.to_sym] == @computer.moved.to_sym
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
