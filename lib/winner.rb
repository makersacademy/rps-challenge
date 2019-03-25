class Winner
  
  def initialize(player1, player2)
    @p1 = player1
    @p2 = player2
  end

  def self.run(player1, player2)
    Winner.new(player1, player2).declare_winner
  end

  def declare_winner
    p1_choice = @p1.user_choice.to_sym
    p2_choice = @p2.user_choice.to_sym
    compute_winner(p1_choice, p2_choice)
  end

  private

  def compute_winner(p1_choice, p2_choice)
    winner = nil
    players_options = { p1: p1_choice, p2: p2_choice }
  
    winning_options = {
      win: [
        { p1: :rock, p2: :lizard },
        { p1: :rock, p2: :scissors },
        { p1: :lizard, p2: :spock },
        { p1: :lizard, p2: :paper },
        { p1: :spock, p2: :scissors },
        { p1: :spock, p2: :rock },
        { p1: :scissors, p2: :lizard },
        { p1: :scissors, p2: :paper },
        { p1: :paper, p2: :spock },
        { p1: :paper, p2: :rock }
      ]
      
    }

    if players_options[:p1] == players_options[:p2]
      winner = "Draw"
    else
      player = nil
      winning_options.each do |key, value|
        value.select do |option|
          player = option == players_options ? @p1 : @p2
          break if option == players_options
        end
      end
      player.increase_score
      winner = player.name
    end

    winner

  end
  
end
