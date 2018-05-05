class Rps
  attr_reader :player, :computer, :player_move, :computer_move

  def self.start(player_name, computer = 'computer')
    @rps = self.new(player_name, computer = 'computer')
  end

  def self.rps
    @rps
  end

  def initialize(player_name, computer = 'computer')
    @player = player_name
    @computer = computer
    @moves = ['rock', 'paper', 'scissors']
  end

  def select_move(choice)
    @player_move = choice
    @computer_move = @moves.sample
  end

  def outcome
    @moves.each_with_index do |choice, i|
      if player_move == choice
        return "#{player} wins!" if computer_move == @moves[i - 1]
        return "#{computer} wins!" if computer_move == @moves[i + 1]
        return "Draw!"
      end
    end
  end
end
