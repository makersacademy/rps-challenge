class Game

  @images = {
    Spock: "images/spock.jpg",
    lizard: "images/lizard.jpg",
    paper: "images/paper.jpg",
    rock: "images/rock.jpg",
    scissors: "images/scissors.jpg",
    }

  def self.create(player_1, *args)
    @game = Game.new(player_1, *args)
  end

  def self.instance
    @game
  end

  attr_reader :p1_choice, :p2_choice, :cpu_choice, :player_one, :player_two,
    :p1_image, :p2_image

  def initialize(player_1, player_2 = nil)
    @images = {
      Spock: "images/spock.jpg",
      lizard: "images/lizard.jpg",
      paper: "images/paper.jpg",
      rock: "images/rock.jpg",
      scissors: "images/scissors.jpg",
      }
    @player_one, @p1_choice = player_1[:name], player_1[:rps]
    @p1_image =  @images[@p1_choice.to_sym]
    p @p1_image
    player_2 ? two_player_game(player_2) : one_player_game
  end

  def winner
    @player_two ? two_player_result : one_player_result
  end

  private

  def two_player_game(player)
    @player_two, @p2_choice = player[:name], player[:rps]
    @p2_image =  @images[@p2_choice.to_sym]
    @choices = (@p1_choice[0] + p2_choice[0]).to_sym
  end

  def one_player_game
    @cpu_choice = [:rock, :paper, :scissors, :Spock, :lizard].sample.to_s
    @choices = (@p1_choice[0] + cpu_choice[0]).to_sym
  end

  def two_player_result
    return "It's a draw" if @p1_choice == @p2_choice
    [:pr, :rs, :sp, :rl, :lS, :Ss, :sl, :lp, :pS, :Sr].include?(@choices) ?
    "Sorry #{@player_two}, #{@player_one} wins!"
    : "Sorry #{@player_one}, #{@player_two} wins!"
  end

  def one_player_result
    return "It's a draw" if @cpu_choice == @p1_choice
    [:pr, :rs, :sp, :rl, :lS, :Ss, :sl, :lp, :pS, :Sr].include?(@choices) ?
    "You win" : "You lose"
  end
end
