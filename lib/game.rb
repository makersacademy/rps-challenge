class Game

  attr_reader :player, :choice, :opponent

  def initialize(player)
    @player = player
    @opponent = ["rock", "paper", "scissors"].sample
  end

  def weapon(choice)
    @choice = choice
  end

  def outcome(choice)
    case choice
      when "rock"
        if @opponent == "paper"
          "The computer wins!"
        elsif @opponent == "scissors"
          "#{@player} wins!"
        else
          "It's a draw!"
        end
      when "paper"
        if @opponent == "scissors"
          "The computer wins!"
        elsif @opponent == "rock"
          "#{@player} wins!"
        else
          "It's a draw!"
        end
      when "scissors"
        if @opponent == "rock"
          "The computer wins!"
        elsif @opponent == "paper"
          "#{@player} wins!"
        else
          "It's a draw!"
        end
    end
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
