class Game

  attr_reader :user, :computer, :winner, :player2

  def initialize(user, computer = Computer.new)
    @user = user
    @player2 = player2
    @computer = computer
    @winner = nil
  end

  def self.create(user, computer)
    @game = Game.new(user, computer)
  end

  def self.multicreate(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def who_won(user_hand)
    comp_hand = @computer.hand
    @winner = if user_hand == comp_hand
      'we have a draw'
    else
      case user_hand
        when 'rock'
          comp_hand == 'scissors' ? "#{@user.name} wins!" : "Computer wins!"
        when 'paper'
          comp_hand == 'rock' ? "#{@user.name} wins!" : "Computer wins!"
        when 'scissors'
          comp_hand == 'paper' ? "#{@user.name} wins!" : "Computer wins!"
      end
    end
  end

  def multi_who_won(user_hand, second_hand)
    @winner = if user_hand == second_hand
      'we have a draw'
    else
      case user_hand
        when 'rock'
          second_hand == 'scissors' ? "#{@user.name} wins!" : "#{@computer.name} wins!"
        when 'paper'
          second_hand == 'rock' ? "#{@user.name} wins!" : "#{@computer.name} wins!"
        when 'scissors'
          second_hand == 'paper' ? "#{@user.name} wins!" : "#{@computer.name} wins!"
      end
    end
  end
end