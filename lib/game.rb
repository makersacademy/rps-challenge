class Game

  def self.instance
    @game
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  attr_reader :player_name, :player_choice, :game_choice, :winner

  def initialize(player_name)
    @player_name = player_name
    @game_choice = ['Rock', 'Paper', 'Scissors'].sample
    @game_decision = {
      'Rock' => { 'Scissors' => 'Winner', 'Paper' => 'Loser' },
      'Scissors' => { 'Paper' => 'Winner', 'Rock' => 'Loser' },
      'Paper' => { 'Rock' => 'Winner', 'Scissors' => 'Loser' }
      }
  end

  def player_picks(option)
    @player_choice = option
  end

  def decide_winner
    if player_choice == game_choice
      @winner = 'Draw'
    else
      @winner = @game_decision[player_choice][game_choice]
    end
  end
end
