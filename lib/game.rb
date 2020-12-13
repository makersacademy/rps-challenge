class Game

  attr_reader :player, :player_score, :computer_score, :message, :rock_image,
              :scissors_image, :paper_image, :player_image, :computer_image

  def initialize(player)
    @player = player
    @player_score = 0
    @computer_score = 0
    @message = "Okay #{@player}, first to 10! Let's go!"
    @rock_image = "https://i.pinimg.com/originals/49/a6/e9/49a6e9c659b49cf1f90909f79efde5b6.jpg"
    @paper_image = "https://cdn4.vectorstock.com/i/1000x1000/64/13/cartoon-notebook-paper-holding-a-pencil-vector-1986413.jpg"
    @scissors_image = "https://i.pinimg.com/originals/de/d7/34/ded734058afb08d065830124d3d97a54.png"
    @player_image = ""
    @computer_image = ""
  end

  # def self.create(player)
  #   @game = Game.new(player)
  # end
  #
  # def self.load
  #   @game
  # end

  def rock
    @player_image = @rock_image
    compare("rock", computer_choice)
  end

  def paper
    @player_image = @paper_image
    compare("paper", computer_choice)
  end

  def scissors
    @player_image = @scissors_image
    compare("scissors", computer_choice)
  end

  def computer_choice
    choice = ["rock", "paper", "scissors"].sample
    set_computer_image(choice)
    choice
  end

  def set_computer_image(choice)
    if choice == "rock"
      @computer_image = @rock_image
    elsif choice == "paper"
      @computer_image = @paper_image
    else
      @computer_image = @scissors_image
    end
  end

  def compare(player, computer)
    if player == computer
      draw
    elsif player == "rock" && computer == "scissors" ||
          player == "scissors" && computer == "paper" ||
          player == "paper" && computer == "rock"
      player_wins
    else
      computer_wins
    end
  end

  def player_wins
    @message = "You won that one!"
    @player_score += 1
  end

  def computer_wins
    @message = "I won that one!"
    @computer_score += 1
  end

  def draw
    @message = "Draw!"
  end

  def end?
    @player_score == 10 || @computer_score == 10
  end

  def winners_message
    if @player_score == 10
      "Congratulations! You won! But you won't beat me next time..."
    else
      "Hooray! I won! Want to try again?"
    end
  end

end
