class Game

  attr_reader :player_1, :player_2, :player_mode, :game_mode

  def initialize(player_1, player_2, player_mode, game_mode)
    @player_1 = player_1
    @player_2 = player_2
    @player_mode = player_mode
    @game_mode = game_mode
  end

  def self.create(player1, player2, player_mode, game_mode)
    @game = Game.new(player1, player2, player_mode, game_mode)
  end

  def self.instance
    @game
  end

  def result
    size = calculate_size
    r = player_1.to_i
    p "en 2 lineas: #{r.to_i}"
    score = (player_1.to_i - player_2.to_i)%size
    # p "p1.choice: #{player_1.choice} and to_i:#{player_1.choice.to_i}"
    # p "p2.choice: #{player_2.choice} and to_i:#{player_2.choice.to_i}"
    # p "result: #{result}"

    determine_winner(score)

  end

  private

    def calculate_size
      game_mode == "classic" ? size = Player::CLASSIC : size = Player::SPOCK
    end

    def determine_winner(result)
      return :draw if result == 0
      return :player1 if result.even?
      :player2
    end

end