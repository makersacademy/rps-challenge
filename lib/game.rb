class Game

  def self.create
    @game = self.new
  end

  def self.instance
    @game
  end

  def self.attacks
    [:rock, :paper, :scissors]
  end

  def decide_winner(player1, player2)
    return false if player1.attack == player2.attack
    stronger_player([player1, player2])
  end

  private

  def stronger_player(players)
    rock_player     = players.find{|p| p.attack == :rock }
    paper_player    = players.find{|p| p.attack == :paper }
    scissors_player = players.find{|p| p.attack == :scissors }

    return paper_player if scissors_player.nil?
    return rock_player if paper_player.nil?
    scissors_player
  end
end
