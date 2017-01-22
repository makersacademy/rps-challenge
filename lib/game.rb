class Game
  attr_reader :rules, :player_1, :player_2, :current_player, :waiting_player
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @waiting_player = player_2
    @rules ={
      :rock => {:rock => "Neither", :paper => "#{@player_2.name}", :scissors => "#{@player_1.name}", :lizard => "#{@player_1.name}", :spock => "#{@player_2.name}"},
      :scissors => {:rock => "#{@player_2.name}", :paper => "#{@player_1.name}", :scissors => "Neither", :lizard => "#{@player_1.name}", :spock => "#{@player_2.name}"},
      :paper => {:rock => "#{@player_1.name}", :paper => "Neither", :scissors => "#{@player_2.name}", :lizard => "#{@player_2.name}", :spock => "#{@player_1.name}"},
      :lizard => {:rock => "#{@player_2.name}", :paper => "#{@player_1.name}", :scissors => "#{@player_2.name}", :lizard => "Neither", :spock => "#{@player_1.name}"},
      :spock => {:rock => "#{@player_1.name}", :paper => "#{@player_2.name}", :scissors => "#{@player_1.name}",:lizard => "#{@player_2.name}", :spock => "Neither"}
    }
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def switch
    @current_player, @waiting_player = @waiting_player, @current_player
  end

  def play(player, opponent)
    @rules[player.downcase.to_sym][opponent.downcase.to_sym]
  end
end
