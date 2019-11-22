class Game
  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]

    # Sets the rules for which player wins for each combination
    @game_rules = {
      rock: { rock: "It's a draw", paper: "#{@players[1].name} wins", scissors: "#{@players[0].name} wins" },
      paper: { rock: "#{@players[0].name} wins", paper: "It's a draw", scissors: "#{@players[1].name} wins" },
      scissors: { rock: "#{@players[1].name} wins", paper: "#{@players[0].name} wins", scissors: "It's a draw" }
    }
  end

  def compare(player1_choice, player2_choice)
    @game_rules[player1_choice.downcase.to_sym][player2_choice.downcase.to_sym]
  end

  def player1
    @players[0].name
  end

  def player2
    @players[1].name
  end

  def play
    errorhash = []
    errorhash << @players[0].name if @players[0].choice == nil
    errorhash << @players[1].name if @players[1].choice == nil
    raise "No choice(s) for: #{errorhash}" if errorhash != []
    compare(@players[0].choice, @players[1].choice)
  end

  def player1_enter_choice(choice)
    @players[0].enter_choice(choice)
  end

  def player2_enter_choice(choice)
    @players[1].enter_choice(choice)
  end


end
