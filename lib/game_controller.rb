class GameController

  attr_reader :player_name, :player_num, :opponent_num, :match_outcome

  CHOICES = [
    'lizard',
    'spock',
    'scissors',
    'paper',
    'rock'
  ]

  def initialize(player_name,game_logic)
    @player_num = nil
    @opponent_num = nil
    @match_outcome = nil
    @player_name = player_name
    @game_logic = game_logic
  end

  def choose_player_num(number)
    @player_num = number
  end

  def choose_opponent_num
    @opponent_num = rand(5)
  end

  def play
    choose_opponent_num
    @match_outcome = @game_logic.calculate_win(@player_num,@opponent_num)
  end

  def self.create_instance(player_name,game_logic)
    @controller = GameController.new(player_name,game_logic)
  end

  def self.return_instance
    @controller
  end

end
