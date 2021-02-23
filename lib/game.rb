class Game

@current = ''

  CHOICES = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
  R, P, S, L, SP = CHOICES
  TO_WIN = { R => [S, L], P => [R, SP], S => [P, L], L => [P, SP], SP => [R, S] }

  attr_reader :player1, :player2, :score1, :score2, :pick1, :pick2, :result, :gametype

  def self.start_new(player1, gametype, player2 = "The computer", player_class = Player, random_class = RandomPick)
    @current = Game.new(player1, gametype, player2, player_class, random_class)
  end

  def self.current
    @current
  end

  def initialize(player1, gametype, player2 = "The computer", player_class = Player, random_class = RandomPick)
    @player1 = player_class.new(player1)
    @player2 = player_class.new(player2)
    @score1 = 0
    @score2 = 0
    @gametype = gametype
    @random_class = random_class
    set_game_type
  end

  def turn(pick1, pick2 = random_pick)
    @pick1 = pick1
    @pick2 = pick2

    won if win?
    lost if lose?
    drew if draw?
  end

  private

  def set_game_type
    @gametype == 'RPS' ? @rand = @random_class.new(CHOICES[0..2]) : @rand = @random_class.new(CHOICES)
  end

  def won
    @score1 += 1
    @result = :win
  end

  def lost
    @score2 += 1
    @result = :lose
  end

  def drew
    @result = :draw
  end

  def draw?
    @pick1 == @pick2
  end

  def win?
    TO_WIN[@pick1].include?(@pick2)
  end

  def lose?
    !draw? && !win?
  end

  def random_pick
    @rand.pick
  end

end
