require_relative "player"
require_relative "playerbot"

class Game

  attr_reader :players, :results

  def initialize(player1)
    @player1 = player1
    @player2 = PlayerBot.new(["RPSbot", "Murderbot", "Opponentbot", "Badloserbot", "Goodgamebot"].sample)
    @players = [@player1, @player2]
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def gather_results
    @results = { player1: players[0].choice, player2: players[1].choice }
  end

  def draw?
    results[:player1] == results[:player2]
  end

  def draw_with_weapon
    draw_erbs = { "paper" => :draw_paper,
                  "rock" => :draw_rock,
                  "scissors" => :draw_scissors }
    draw_erbs[results[:player1]]
  end

  def winner
    return nil if draw?

    winning_combos = [["paper", "rock"], ["rock", "scissors"], ["scissors", "paper"]]
    actual_results = [results[:player1], results[:player2]]
    winning_combos.include?(actual_results) ? players[0] : players[1]
  end

  def win_with_weapons
    win_erbs = { "paper+scissors" => :win_paper_scissors,
                  "scissors+paper" => :win_paper_scissors,
                  "paper+rock" => :win_paper_rock,
                  "rock+paper" => :win_paper_rock,
                  "rock+scissors" => :win_rock_scissors,
                  "scissors+rock" => :win_rock_scissors }
    combined_results = [results[:player1], results[:player2]].join("+")
    win_erbs[combined_results]
  end

  def results_page
    draw? ? draw_with_weapon : win_with_weapons
  end

end
