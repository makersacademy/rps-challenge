class Game

  def self.create(attacks = [:rock, :paper, :scissors])
    @game = self.new(attacks)
  end

  def self.instance
    @game
  end

  def initialize(attacks)
    @attacks = attacks
  end

  def attacks
    @attacks.dup
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
