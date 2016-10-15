class Game

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  attr_reader :player1, :player1_choice, :player2_choice, :winner, :message, :philosophy

  def initialize(name)
    @player1 = name
    @player1_choice = nil
    @player2_choice = nil
    @winner = nil
    @message = nil
    @philosophy = nil
  end

  def set_player_choice(choice)
    @player1_choice = choice
  end

  def set_auto_choice(stub=nil)
    choices = [:rock, :paper, :scissors]
    @player2_choice = stub.nil? ? choices[rand_choice] : choices[stub]
  end

  def decide_winner
    unless @player1_choice == @player2_choice
      case @player1_choice
      when :rock
         @winner = (@player2_choice == :paper) ? "game" : @player1
      when :paper
        @winner = (@player2_choice == :scissors) ? "game" : @player1
      when :scissors
        @winner = (@player2_choice == :rock) ? "game" : @player1
      end
    end
    messaging
  end

  def messaging
    if @winner.nil?
      @message = "It's a draw!"
      @philosophy = "Enjoy the sense of balance that true equality can bring."
    elsif @winner == @player1
      @message = "#{@player1}, you are the winner!"
      @philosophy = "Let the feeling of pride seep into your inner core."
    elsif @winner == "game"
      @message = "#{@player1}, you lost this time."
      @philosophy = "Those who face adversity with a resilient heart can never truly lose."
    end
  end

  private

  def rand_choice
    rand(3)
  end

end
