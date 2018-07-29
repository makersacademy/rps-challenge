# game class
class Game

  attr_reader :score, :names, :players, :game_over, :num_players, :move_list, 
              :winner, :first_round

  WINNERS = [[:Scissors, :Paper], [:Paper, :Rock], [:Rock, :Scissors],
             [:Rock, :Lizard], [:Lizard, :Spock], [:Spock, :Scissors],
             [:Scissors, :Lizard], [:Lizard, :Paper], [:Paper, :Spock],
             [:Spock, :Rock]                           
            ]
  def self.instance
    @game
  end

  def self.create(player_class, player_1, player_2 = 'Computer')
    @game = Game.new(player_class, player_1, player_2)
  end

  def initialize(player_class, player_1, player_2 = 'Computer')
    @player_class = player_class
    @names = [player_1, player_2 == '' ? 'Computer' : player_2]
    @num_players = @names[1] == 'Computer' ? 1 : 2
    @players = [@player_class.new(names[0]), @player_class.new(names[1])] 
    no_args_instance_creation # create no argument instances
  end

  def no_args_instance_creation 
    @first_round = true
    @winner = nil
    @game_over = false
    @score = [0, 0] # score is made, index 0 = p1, 1 = p2
    @move_list = [] # for easy access to game values
  end

  def move(p1_choice, p2_choice)
    return [0, 0] if p1_choice == p2_choice
    return [1, 0] if WINNERS.include?([p1_choice.to_sym, p2_choice.to_sym])
    [0, 1] # can only be p2_winner as all other possibilities are accounted for
  end

  def make_move(p1_choice, p2_choice = nil)
    @first_round = false
    @move_list.clear
    p2_choice = rand_choice if p2_choice.nil?
    @move_list.push(p1_choice, p2_choice) # add moves to list
    @score.each_index { |i| @score[i] += move(p1_choice, p2_choice)[i] }
    @game_over = true if score.include?(5) # game is over if score of 5
  end

  def rand_choice
    ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock'].sample
  end

end
