class Game

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end
  
  def self.instance
    @game
  end
  
  # ^^ Class methods, not a Class instance methods like below.
  # Game.new is a method on the class Game
  # Game.new.instance goes out of scope when response is sent
  # Game.instance stays in scope
  
  
    attr_reader :current_turn, :players
  
    def initialize(player_1, player_2)
      @players = [player_1, player_2]
      @current_turn = player_1
    end
  
    def player_1
      @players.first
    end
  
    def player_2
      @players.last
    end
  
    def attack(player)
      player.receive_damage
    end
    
    def switch_turns
      @current_turn = opponent_of(current_turn)
    end
    
    def opponent_of(the_player)
      @players.select { |player| player != the_player }.first
    end
  
     def game_over?
       losing_players.any?
     end
  
    def loser
      losing_players.first
    end
  
    def losing_players
      @players.select { |player| player.hit_points <= 0 }
    end
  
  end