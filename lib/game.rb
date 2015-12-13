require 'forwardable'

class Game
  extend Forwardable
  def_delegator :current_turn, :name, :current_turn_name

  DRAW_MSG = 'Draw, there is no winner'
  WIN_MSG = ' wins the game'
  attr_reader :players, :current_turn, :message

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
    @message = ''
  end

  def first_player_name
    players.first.name
  end

  def second_player_name
    players.last.name
  end

  def over?
    !players.detect { |player| !player.element }
  end

  def play(element = nil)
    @message << current_turn.assign_element(element) << '<br>'
    return result if over?
    switch
    play if current_turn.is_computer?
  end

  def reset
    players.each(&:reset)
    @message = ''
    @current_turn = players[0]
  end

  private

  def result
    draw? ? @message << DRAW_MSG : @message << winner.name << WIN_MSG
  end

  def draw?
    players[0].element == players[1].element
  end

  def switch
    @current_turn = players.detect { |player| player != current_turn }
  end

  def winner
    if players[0].element == 'rock' && players[1].element == 'scissors' ||
       players[0].element == 'scissors' && players[1].element == 'paper' ||
       players[0].element == 'paper' && players[1].element == 'rock'
      players[0]
    else
      players[1]
    end
  end
end
