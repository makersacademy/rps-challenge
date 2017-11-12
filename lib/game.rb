require_relative 'choicehandler'
require_relative 'player'

class Game
  attr_reader :p1, :p2, :limit
  BOT_NAME = 'TortoiseBot'
  DEFAULT_LIMIT = 10

  def initialize(p1, p2 = nil, limit: DEFAULT_LIMIT, player: Player, 
                 handler: ChoiceHandler.new)
    @p1 = player.new(p1)
    @p2 = player.new(p2 || BOT_NAME)
    @limit = limit
    @handler = handler
  end

  def resolve(choice_1, choice_2 = nil)
    return if over?
    increment(choice_1, choice_2)
  end

  def over?
    p1.score == limit || p2.score == limit
  end 

  private

  def increment(choice_1, choice_2)
    case outcome(choice_1, choice_2)
    when 1 
      p1.increment
    when -1 
      p2.increment
    end
  end

  def outcome(choice_1, choice_2)
    @handler.compare(choice_1, choice_2)
  end
end
