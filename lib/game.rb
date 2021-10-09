class Game

  attr_reader :user, :computer, :winner

  def initialize(user, computer = Computer.new)
    @user = user
    @computer = computer
    @winner = nil
  end

  def self.create(user, computer)
    @game = Game.new(user, computer)
  end

  def self.instance
    @game
  end

  def who_won(user_hand)
    comp_hand = @computer.hand
    @winner = if user_hand == comp_hand
      'draw'
    else
      case user_hand
        when 'rock'
          comp_hand == 'scissors' ? "user" : "computer"
        when 'paper'
          comp_hand == 'rock' ? "user" : "computer"
        when 'scissors'
          comp_hand == 'paper' ? "user" : "computer"
      end
    end
  end

end