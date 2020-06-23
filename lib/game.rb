class Game
  
  PAPER = 'paper'
  SCISSORS = 'scissors'
  ROCK = 'rock'

  RULES = [
    { :player => PAPER, :game => PAPER, :result => "draw" },
    { :player => ROCK, :game => ROCK, :result => "draw" },
    { :player => PAPER, :game => PAPER, :result => "draw" },
    { :player => PAPER, :game => ROCK, :result => "win" },
    { :player => PAPER, :game => SCISSORS, :result => "lose" },
    { :player => ROCK, :game => SCISSORS, :result => "win" },
    { :player => ROCK, :game => PAPER, :result => "lose" },
    { :player => SCISSORS, :game => PAPER, :result => "win" },
    { :player => SCISSORS, :game => ROCK, :result => "lose" }
  ]

  attr_reader :game_choice
  
  def initialize(player, random_weapon)
    @player = player
    @random_weapon = random_weapon
    @game_choice = @random_weapon.weapon
  end

  def result
    player_choice = @player.choice
    calculate_result(player_choice)
  end

  private

  def calculate_result(player_choice)

    RULES.each do |rule|
      if rule[:player] == player_choice && rule[:game] == @game_choice
        return rule[:result]
      end
    end
  end

end
