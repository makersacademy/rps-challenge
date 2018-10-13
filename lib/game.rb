class Game
  WEAPONS = [:rock, :paper, :scissors]
  RPSLS_WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]
  HANDLER = {
    :rock     => { :rock => :tie,   :paper => :lose,  :scissors => :win },
    :paper    => { :rock => :win,   :paper => :tie,   :scissors => :lose },
    :scissors => { :rock => :lose,  :paper => :win,   :scissors => :tie },
  }
  RPSLS_HANDLER =  {
      :rock => { :rock => :tie,  :paper => :lose, :scissors => :win,  :lizard => :win, :spock => :lose},
      :paper => { :rock => :win,   :paper => :tie,   :scissors => :lose, :spock => :win , :lizard => :lose},
      :scissors => { :rock => :lose,  :paper => :win,   :scissors => :tie, :lizard => :win, :spock => :lose} ,
      :lizard => {:rock => :lose, :paper => :win, :scissors => :lose, :spock => :win, :lizard => :tie  },
      :spock => { :spock => :tie, :paper => :lose, :scissors => :win, :rock => :win, :lizard => :lose },
    }

  attr_reader :player_1, :player_2
  attr_accessor :game_mode, :player_1_choice, :player_2_choice

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def player_choice(weapon)
    fail 'not an available weapon' unless Game::WEAPONS.include? weapon.to_sym
    @weapon = weapon.to_sym
  end

  def result(player_1_choice, player_2_choice)
    player_1_choice = player_1_choice.to_sym
    if player_2_choice.nil?
      player_2_choice = @game.player_2.weapon.to_sym
    else
    player_2_choice = player_2_choice.to_sym
    end
    if @game_mode == "rps"
      compare(HANDLER[player_1_choice][player_2_choice])
    else
      compare(RPSLS_HANDLER[player_1_choice][player_2_choice])
    end
  end

  def compare(outcome)
    if outcome == :win
      return :win
    elsif outcome == :lose
      return :lose
    else
      return :tie
    end
  end

end
