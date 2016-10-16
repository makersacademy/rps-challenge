class Player

  attr_reader :name, :play_history, :outcome_history

  # def self.find(id)
  #   players[id]
  # end
  #
  # def self.add(id, player)
  #   players[id] = player
  # end
  #
  # def self.players
  #   @players ||= {}
  # end

  def self.create_player_one(name)
    @player_one = Player.new(name)
  end

  def self.return_player_one
    @player_one
  end

  def self.create_player_two(name)
    @player_two = Player.new(name)
  end

  def self.return_player_two
    @player_two
  end

  def initialize(name)
    @name = name
    @play_history = []
    @outcome_history = []
  end

  def store_choice(choice)
    @play_history << choice
  end

  def store_outcome(outcome)
    @outcome_history << outcome
  end

end
