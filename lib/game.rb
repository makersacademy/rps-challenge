class Game

  def self.create(player1, player2)
    @game = self.new(player1, player2)
  end

  def self.instance
    @game
  end

  def self.attacks
    [:rock, :paper, :scissors]
  end

  attr_reader :winner

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def decide_winner(player1, player2)
    return false if player1.attack == player2.attack
    stronger_player([player1, player2])
  end

  def auto_battle(player1_attack)
    player1.select_attack(player1_attack.downcase.to_sym)
    player2.select_random(Game.attacks)
    @winner = decide_winner(player1, player2)
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
