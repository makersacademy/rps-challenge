class Match
  attr_reader :winner, :move_options
  attr_accessor :player, :computer

  def initialize(player, computer)
    @computer = computer
    @player = player
    @previous_match_state = nil
    @winner
    @move_options = {'rock' => 'paper', 'paper' => 'scissors', 'scissors' => 'rock' }
  end

  def self.setup(player, computer)
    @match = Match.new(player, computer)
  end

  def self.start
    @match
  end

  def player
    @player
  end

  def rollmove(move)
    temp = @computer.move
    if @move_options[move] == temp
      @winner = "Computer Wins, #{temp} beats #{move}"
    elsif @move_options[temp] == move
      @winner = "#{@player.name} Wins, #{move} beats #{temp}"
    else
      @winner = "Draw #{temp} = #{move}"
    end
  end
end
