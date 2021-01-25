class Game
  attr_reader :champion, :computer

  def winner(player)
    @computer = Computer.new
    if player.to_sym == @computer.moved
    elsif SET[player.to_sym] == @computer.moved
      @champion = 'player'
    else
      @champion = 'computer'
    end
  end

  private
  attr_writer :champion
  SET = { :rock => :scissors,
          :paper => :rock,
          :scissors => :paper }
end
