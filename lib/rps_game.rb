class RPSGame

CHOICE_TO_SYM = { 'Rock'=>:ROCK,'Paper'=>:PAPER,'Scissors'=>:SCISSORS }
# WINNERS and LOSERS from the player's perspective, the first value of each
# pair being the player's choice, the second, the computer's choice.
WINNERS = [[:ROCK, :SCISSORS],[:SCISSORS, :PAPER], [:PAPER, :ROCK]]

LOSERS =  WINNERS.map { |i,j| [j,i] }

attr_reader :winner, :player, :computer_player

  def initialize(player,computer_player)
    @player = player
    @computer_player = computer_player
  end

  def self.create(player, computer_player)
    @game = RPSGame.new(player, computer_player)
  end

  def self.instance
    @game
  end

  def play
    case player_outcome(@player.weapon,@computer_player.weapon)
      when :WIN
        @winner = @player.name
      when :LOSE
        @winner = @computer_player.name
      else
        @winner = 'That was a tie'
      end
  end

  def player_outcome(player_weapon, computer_weapon)
    plays = [CHOICE_TO_SYM[player_weapon],CHOICE_TO_SYM[computer_weapon]]
    return :WIN  if WINNERS.include?(plays)
    return :LOSE if LOSERS.include?(plays)
    :TIE
  end

end
