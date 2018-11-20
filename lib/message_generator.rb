class MessageGenerator
  attr_reader :messages

  GAME_COMMENTARY = { rock_scissors: "Rock crushes scissors",
                      rock_lizard: "Rock crushes lizard",
                      spock_scissors: "Spock smashes scissors",
                      spock_rock: "Spock vapourises rock",
                      lizard_spock: "Lizard poisons Spock",
                      lizard_paper: "Lizard eats paper",
                      paper_spock: "Paper disproves Spock",
                      paper_rock: "Paper covers rock",
                      scissors_paper: "Scissors cut paper",
                      scissors_lizard: "Scissors decapitate lizard" }

  def initialize(winner, loser)
    @winner = winner
    @loser = loser
    @messages = []
  end

  def message
    if @winner == "draw"
      @messages = ["It's a draw", "Congrats, you both live to see another day"]
    else
      @messages << "#{@winner.name} wins!"
      game_commentary_message
    end
  end

  def game_commentary_message
    @commentary_criteria = "#{@winner.move}_#{@loser.move}"
    @messages << GAME_COMMENTARY[@commentary_criteria.to_sym]
  end

end
