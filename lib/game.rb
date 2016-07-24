require_relative 'player'
require_relative 'bot'



class Game

  def self.create(player_1_name)
    @game = Game.new(player_1_name)
  end

  def self.instance
    @game
  end

attr_reader :bot_selection, :gesture, :arr, :winner, :player_1_name
  def initialize(player_1_name)
    @player_1_name = player_1_name
    @player_1_index = nil
    @bot_selection = Bot.new.gesture
    @bot_index = nil
    @gesture = nil
    @winner = nil
    @arr =  [
           [:tie,        :rock,     :paper,    :scissors,    :spock,    :lizard],
           [:rock,       :tie,      :win,      :lose,        :win,      :lose],
           [:paper,      :lose,     :tie,      :win,         :lose,     :win],
           [:scissors,   :lose,     :lose,     :tie,         :win,      :lose],
           [:spock,      :lose,     :win,      :lose,        :tie,      :win],
           [:lizard,     :win,      :lose,     :win,         :lose,     :tie]
            ]
  end

  def play(gesture)
    @gesture = gesture
    outcome
  end

  def bot_index
    @bot_index = @arr.transpose[0].index(@bot_selection)
  end

  def player_1_index
    @player_1_index = @arr[0].index(@gesture)
  end

  def outcome
    bot_index
    player_1_index
    @arr.transpose[@player_1_index][@bot_index]
  end

  def winner
    if outcome == :tie
      'tie game'
    else
      outcome == :win ? @winner = 'you' : @winner = 'computer'
    end
  end

end


=begin
@arr =  [
       [:tie,        :rock,     :paper,    :scissors,    :spock,    :lizard],
       [:rock,       :tie,      :paper,    :rock,        :spock,    :rock],
       [:paper,      :paper,    :tie,      :scissors,    :paper,    :lizard],
       [:scissors,   :scissors, :scissors, :tie,         :spock,    :scissors],
       [:spock,      :spock,    :paper,    :spock,       :tie,      :lizard],
       [:lizard,     :rock,     :lizard,   :scissors,    :lizard,   :tie]
        ]


=end
