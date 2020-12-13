class Game
  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @rps_hash = {
      'Rock' => {"Scissors" => 0, "Paper" => 1},
      'Paper' => {"Rock" => 0 , "Scissors" => 1},
      'Scissors' => {"Paper" => 0, "Rock" => 1}
     }
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def random_choice
    @rps_hash.keys[random_number]
  end

  private

  def random_number
    rand(3)
  end

end

  # attr_reader :player, :computer
  #
  # def initialize(player_class = Player)
  #   @player_class = player_class
  #   @player_choice_hash = {}
  #   @rps_array = ['Rock', 'Paper', 'Scissors']
  # end
  #
  # def new_player(name)
  #   @player = @player_class.new(name)
  # end
  #
  # def add_player_choice(rps)
  #   @player_choice_hash[@player] = rps
  #   @player_choice_hash
  # end
  #
  # def player_choice
  #   @player_choice_hash[@player]
  # end
  #
  # def new_computer_player
  #   @computer = @player_class.new('Computer')
  # end
  #
  # def add_computer_choice
  #   @player_choice_hash[@computer] = random_computer_choice
  # end
  #
  # def computer_choice
  #   @player_choice_hash[@computer]
  # end
  #
  # private
  #
  # def random_computer_choice
  #   @rps_array.sample
