class Game
  RULES = { rock: :scissors, 
            paper: :rock, 
            scissors: :paper }

  def self.add(id, game)
    games[id] = game
  end

  def self.find(id)
    games[id]
  end
  
  def self.games
    @games ||= {}
  end

  attr_reader :player1, :player2

  def initialize(session, human_klass, computer_klass)
    @player1 = human_klass.new(session[:name1])
    opponent_klass = session[:ai?] ? computer_klass : human_klass
    @player2 = opponent_klass.new(session[:name2])
  end

  def add_choice(chooser, shape)
    if chooser == 'player2'
      player2.chooser shape
    else
      player1.choose shape
      player2.choose if player2.computer?
    end
  end

  def player2_turn?
    !player2.choice
  end

  def draw?
    player1.choice == player2.choice
  end

  def winner
    fail 'Theres no winner!' if draw?
    player1_wins? ? player1 : player2
  end

  private

  def player1_wins? 
    RULES[player1.choice] == player2.choice 
  end
end
