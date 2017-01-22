class MessageHandler

  @message_handler_instance = nil

  def initialize(message_log:, game:)
    @game = game
    @message_log = message_log
    self.class.message_handler_instance = self
  end

  def self.message_handler_instance
    @message_handler_instance
  end

  def self.message_handler_instance=(value)
    @message_handler_instance = value
  end

  def enter_game_message
    message = "#{game.players[:player_1].name} and #{game.players[:player_2].name} entered the game!"
    add_message_to_log(message)
  end

  def battle_result_message(winning_move)
    loser_name = find_loser(winning_move)
    winner_name = find_winner(winning_move)
    message = "#{winner_name}'s #{winning_move[1][0].to_s.capitalize} #{winning_move[1][2]} #{loser_name}'s #{winning_move[1][1].to_s.capitalize}!"
    add_message_to_log(message)
  end

  private

  def add_message_to_log(message)
    message_log.add_message(message)
  end

  def find_loser(winning_move)
    winning_move[0] == :player_1 ? game.players[:player_2].name : game.players[:player_1].name
  end

  def find_winner(winning_move)
    winning_move[0] == :player_1 ? game.players[:player_1].name : game.players[:player_2].name
  end

  attr_reader :message_log, :game

end
