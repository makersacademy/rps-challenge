class Game

  attr_reader :player1, :player2, :gametype, :gamearray

  def self.create(player1, player2, gametype, gamevariant = "classic")
    @game = Game.new(player1, player2, gametype, gamevariant)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2, gametype, gamevariant = "classic")
    @game_scenarios = {
          "rock" => ["scissors"],
          "paper" => ["rock"],
          "scissors" => ["paper"]
        }

        @game_scenarios2 = {"rock" => %w(lizard scissors),
  "paper" => %w(rock spock),
  "scissors" => %w(lizard paper),
  "lizard" => %w(paper spock),
  "spock" => %w(scissors rock)
  }
    @player1 = player1
    @player2 = player2
    @gametype = gametype
    @gamevariant = gamevariant
    @gamearray = ['rock', 'paper', 'scissors']
    if @gamevariant != "classic"
      @gamearray << "lizard, spock"
      # @gamearray << "spock"
    end
    @scenarios = @game_scenarios
    # p @scenarios
    # p @gamevariant
    if @gamevariant == "classic"
      @scenarios = @game_scenarios
    else
      @scenarios = @game_scenarios2
    end



# p @game_scenarios2["rock"].include?("lizard")
  end

  def random


    @gamearray.sample
  end

  def update_choice(choice, player)
    if player.playertype == "computer"
      choice = random
    else
      choice = choice
    end
    player.update_choice(choice)
  end


  def win_logic(round1 = @player1.choice, round2 = @player2.choice)
# p @scenarios
    if round1 == round2
      "draw"
		elsif @scenarios[round1].include?(round2)
    @player1
		else
    @player2
    end
  end

end
