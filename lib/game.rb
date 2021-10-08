class Game
  attr_reader :choices, :player, :player_move, :computer_move,
    :paper, :rock, :scissors, :lizard, :spock
  def initialize(player, weapons_class = Weapons)
    @player = player
    @weapons_class = weapons_class
    @paper = @weapons_class.new('paper', ["scissors", "lizard"])
    @rock= @weapons_class.new('rock',["paper", "spock"])
    @scissors = @weapons_class.new('scissors',["rock", "spock"])
    @lizard = @weapons_class.new('lizard',["rock", "scissors"])
    @spock = @weapons_class.new('spock',["paper", "lizard"])
    # @choices = ['scissors', 'paper', 'rock']
    @choices = [@paper, @rock, @scissors, @lizard, @spock]
  end

  def self.create(player)
    @game = Game.new(player)
  end
  
  def self.instance
    @game
  end

  def set_moves(player_choice)
    @player.add_choice(name_to_object(player_choice))
    @player_move = @player.move
    @computer_move = computer_choice
  end

  def name_to_object(name)
    puts name
    @choices.each {|choice| return choice if choice.name == name }
  end

  def computer_choice
    @choices.sample
  end

  def output
    return "tie" if tie?
    return "The Computer" if computer_win?
    return @player.name
  end

  def tie?
    player_move == computer_move
  end
  
  def computer_win?
    false unless @player_move.predators.include?(computer_move.name)
  end
end