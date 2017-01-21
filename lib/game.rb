class Game

  WINNING_COMBO = {"Rock"=>"Scissors", "Paper"=>"Rock", "Scissors"=>"Paper"}

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def fight_with(weapon1)
    weapon2 = select_weapon
    winner = select_winner(weapon1, weapon2)
    output(weapon1, weapon2, winner)
  end

  private

  def select_weapon
    case Kernel.rand(3)
      when 0 ; "Rock"
      when 1 ; "Paper"
      when 2 ; "Scissors"
    end
  end

  def select_winner(player1_weapon, player2_weapon)
    WINNING_COMBO.each do |weapon1, weapon2|
      return 0 if player1_weapon == weapon1 && player2_weapon == weapon2
      return 1 if player2_weapon == weapon1 && player1_weapon == weapon2
    end
    2
  end

  def output(weapon1, weapon2, winner)
    output = "#{weapon1} vs #{weapon2} - "
    if winner < 2
      output += "#{@players[winner].name} wins the match"
    else
      output += "Game is a draw!"
    end
  end

end
