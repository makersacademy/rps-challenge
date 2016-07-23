class TheGame

  attr_reader :internet_choice, :player_choice, :player_name

  def initialize name, player_choice, internet_choice
    @player_name = name
    @internet_choice = internet_choice.to_sym
    @player_choice = player_choice.to_sym
  end

  def the_winner
    options = [:scissors, :paper, :rock]
    result = ["A DRAW!", "THE INTERNET, BOOO...", "YOU ARE #{self.player_name.upcase}!"]
    result[options.index(player_choice) - options.index(internet_choice) % 3]
  end

  def self.instance
    @game
  end

  private

  def self.create name, player, internet
    @game = TheGame.new name, player, internet
  end

end
